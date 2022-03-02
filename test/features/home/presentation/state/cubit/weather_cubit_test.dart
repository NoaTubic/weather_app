import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:weather_app/core/use_cases/use_case.dart';
import 'package:weather_app/domain/failure/failure.dart';
import 'package:weather_app/features/home/domain/entities/weather_data_entity.dart';
import 'package:weather_app/features/home/domain/use_cases/get_weather_data_use_case.dart';
import 'package:weather_app/features/home/presentation/state/cubit/weather_cubit.dart';

import 'weather_cubit_test.mocks.dart';

@GenerateMocks([GetWeatherDataUseCase, WeatherDataEntity])
void main() {
  final mockGetWeatherDataUseCase = MockGetWeatherDataUseCase();
  final mockWeatherDataEntity = MockWeatherDataEntity();
  group('Weather cubit tests', () {
    blocTest<WeatherCubit, WeatherState>(
      'Weather cubit emits [] when no events are added.',
      build: () => WeatherCubit(mockGetWeatherDataUseCase),
      expect: () => const <WeatherState>[],
    );

    blocTest<WeatherCubit, WeatherState>(
      'Weather cubit emits [Error state] when GetWeatherDataUseCase returns unexpected error.',
      build: () => WeatherCubit(mockGetWeatherDataUseCase),
      setUp: () => mockGetWeatherDataUseCase.setUpErrorUseCase(),
      act: (WeatherCubit weatherCubit) {
        weatherCubit.fetchWeatherData();
      },
      expect: () => [
        const WeatherState.error(failure: Failure.unexpectedError()),
      ],
      verify: (WeatherCubit weatherCubit) =>
          verify(mockGetWeatherDataUseCase.call(NoParams())).called(1),
    );

    blocTest<WeatherCubit, WeatherState>(
      'Weather cubit emits [Error state] when GetWeatherDataUseCase returns offline error.',
      build: () => WeatherCubit(mockGetWeatherDataUseCase),
      setUp: () => mockGetWeatherDataUseCase.setUpOfflineUseCase(),
      act: (WeatherCubit weatherCubit) {
        weatherCubit.fetchWeatherData();
      },
      expect: () => [
        const WeatherState.error(failure: Failure.offline()),
      ],
      verify: (WeatherCubit weatherCubit) =>
          verify(mockGetWeatherDataUseCase.call(NoParams())).called(1),
    );

    blocTest<WeatherCubit, WeatherState>(
      'Weather cubit emits [Loading state, Loaded state] when isInitial is set to true'
      ' and GetWeatherDataUseCase returns data successfully.',
      build: () => WeatherCubit(mockGetWeatherDataUseCase),
      setUp: () =>
          mockGetWeatherDataUseCase.setUpDataUseCase(mockWeatherDataEntity),
      act: (WeatherCubit weatherCubit) {
        weatherCubit.fetchWeatherData(isInitial: true);
      },
      expect: () => [
        const WeatherState.loading(),
        WeatherState.loaded(weatherDataEntity: mockWeatherDataEntity),
      ],
      verify: (WeatherCubit weatherCubit) =>
          verify(mockGetWeatherDataUseCase.call(NoParams())).called(1),
    );

    blocTest<WeatherCubit, WeatherState>(
      'Weather cubit emits [Loaded state] when isInitial is set to false'
      ' and GetWeatherDataUseCase returns data successfully.',
      build: () => WeatherCubit(mockGetWeatherDataUseCase),
      setUp: () =>
          mockGetWeatherDataUseCase.setUpDataUseCase(mockWeatherDataEntity),
      act: (WeatherCubit weatherCubit) {
        weatherCubit.fetchWeatherData(isInitial: false);
      },
      expect: () => [
        WeatherState.loaded(weatherDataEntity: mockWeatherDataEntity),
      ],
      verify: (WeatherCubit weatherCubit) =>
          verify(mockGetWeatherDataUseCase.call(NoParams())).called(1),
    );
  });
}

extension WeatherDataMockMethods on GetWeatherDataUseCase {
  void setUpErrorUseCase() async {
    when(call(NoParams())).thenAnswer(
      (realInvocation) async {
        return const Left(Failure.unexpectedError());
      },
    );
  }

  void setUpOfflineUseCase() async {
    when(call(NoParams())).thenAnswer(
      (realInvocation) async {
        return const Left(Failure.offline());
      },
    );
  }

  void setUpDataUseCase(MockWeatherDataEntity mockWeatherDataEntity) async {
    when(call(NoParams())).thenAnswer(
      (realInvocation) async {
        return Right(mockWeatherDataEntity);
      },
    );
  }
}
