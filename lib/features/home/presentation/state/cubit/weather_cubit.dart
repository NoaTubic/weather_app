import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_app/core/use_cases/use_case.dart';
import 'package:weather_app/domain/failure/failure.dart';
import 'package:weather_app/features/global/services/location_service.dart';
import 'package:weather_app/features/home/domain/entities/weather_data_entity.dart';
import 'package:weather_app/features/home/domain/use_cases/get_weather_data_use_case.dart';
import 'package:weather_app/injections/injection.dart';

part 'weather_cubit.freezed.dart';
part 'weather_state.dart';

@lazySingleton
class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit(
    this.getWeatherDataUseCase,
  ) : super(const WeatherState.initial());

  final GetWeatherDataUseCase getWeatherDataUseCase;

  Future fetchWeatherData({bool isInitial = false}) async {
    try {
      if (isInitial) emit(const WeatherState.loading());
      final resultForecast = await getWeatherDataUseCase(NoParams());
      resultForecast.fold(
        (failure) => emit(WeatherState.error(failure: failure)),
        (weatherDataEntity) => emit(
          WeatherState.loaded(
            weatherDataEntity: weatherDataEntity,
          ),
        ),
      );
    } catch (exception) {
      debugPrint(exception.toString());
      emit(const WeatherState.error(failure: Failure.unexpectedError()));
    }
  }

  Future clearSelectedLocation() async {
    if (locator<LocationService>().isAlreadyReseted()) {
      return;
    }
    locator<LocationService>().updateCurrentLocation(null);
    fetchWeatherData();
  }
}
