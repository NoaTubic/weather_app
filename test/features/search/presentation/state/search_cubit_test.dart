import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:weather_app/domain/failure/failure.dart';
import 'package:weather_app/features/global/services/location_service.dart';
import 'package:weather_app/features/search/domain/entities/search_entity.dart';
import 'package:weather_app/features/search/domain/use_cases/search_city_use_case.dart';
import 'package:weather_app/features/search/presentation/state/cubit/search_cubit.dart';

import 'search_cubit_test.mocks.dart';

@GenerateMocks([SearchCityUseCase, SearchEntity, LocationService])
void main() {
  final mockSearchCityUseCase = MockSearchCityUseCase();
  final mockSearchEntity = MockSearchEntity();
  final mockLocationService = MockLocationService();
  final mockSearchState = SearchState.initial();

  group('Search cubit tests', () {
    blocTest<SearchCubit, SearchState>(
      'Search cubit emits [] when no events are added',
      build: () => SearchCubit(mockSearchCityUseCase, mockLocationService),
      expect: () => const <SearchState>[],
    );

    blocTest<SearchCubit, SearchState>(
      'Search cubit emits [Error state] when SearchCityUseCase returns unexpected error.',
      build: () => SearchCubit(mockSearchCityUseCase, mockLocationService),
      setUp: () => mockSearchCityUseCase.setUpErrorUseCase(_query),
      act: (SearchCubit searchCubit) {
        searchCubit.searchCity(_query);
      },
      expect: () => [
        mockSearchState.copyWith(isLoading: false, searchEntity: emptyList),
        mockSearchState.copyWith(isLoading: true, searchEntity: emptyList),
        SearchState.error(failure: const Failure.unexpectedError()),
      ],
      verify: (SearchCubit searchCubit) =>
          verify(mockSearchCityUseCase.call(_query)).called(1),
    );

    blocTest<SearchCubit, SearchState>(
      'Search cubit emits [Error state] when SearchCityUseCase returns offline error.',
      build: () => SearchCubit(mockSearchCityUseCase, mockLocationService),
      setUp: () => mockSearchCityUseCase.setUpOfflineUseCase(_query),
      act: (SearchCubit searchCubit) {
        searchCubit.searchCity(_query);
      },
      expect: () => [
        mockSearchState.copyWith(isLoading: false, searchEntity: emptyList),
        mockSearchState.copyWith(isLoading: true, searchEntity: emptyList),
        SearchState.error(failure: const Failure.offline()),
      ],
      verify: (SearchCubit searchCubit) =>
          verify(mockSearchCityUseCase.call(_query)).called(1),
    );

    blocTest<SearchCubit, SearchState>(
      'Search cubit emits [Loaded state] when SearchCityUseCase returns data.',
      build: () => SearchCubit(mockSearchCityUseCase, mockLocationService),
      setUp: () =>
          mockSearchCityUseCase.setUpDataUseCase(_query, mockSearchEntity),
      act: (SearchCubit searchCubit) => searchCubit.searchCity(_query),
      expect: () => [
        mockSearchState.copyWith(isLoading: false, searchEntity: emptyList),
        mockSearchState.copyWith(isLoading: true),
        mockSearchState
            .copyWith(isLoading: false, searchEntity: [mockSearchEntity]),
      ],
      verify: (SearchCubit searchCubit) =>
          verify(mockSearchCityUseCase.call(_query)).called(1),
    );

    blocTest<SearchCubit, SearchState>(
      'Search cubit emits [Loading state] when search query is empty.',
      build: () => SearchCubit(mockSearchCityUseCase, mockLocationService),
      setUp: () => mockSearchCityUseCase.setUpDataUseCase('', mockSearchEntity),
      act: (SearchCubit searchCubit) => searchCubit.searchCity(''),
      expect: () =>
          [mockSearchState.copyWith(isLoading: false, searchEntity: emptyList)],
      verify: (SearchCubit searchCubit) =>
          verifyNever(mockSearchCityUseCase.call('')).called(0),
    );
  });
}

const String _query = 'London';
final emptyList = <SearchEntity>[];

extension SearchDataMockMethods on SearchCityUseCase {
  void setUpErrorUseCase(String params) async {
    when(call(params)).thenAnswer((realInvocation) async {
      return const Left(Failure.unexpectedError());
    });
  }

  void setUpOfflineUseCase(String params) async {
    when(call(params)).thenAnswer((realInvocation) async {
      return const Left(Failure.offline());
    });
  }

  void setUpDataUseCase(String params, MockSearchEntity searchEntity) async {
    when(call(params)).thenAnswer((realInvocation) async {
      return Right(
        [searchEntity],
      );
    });
  }
}
