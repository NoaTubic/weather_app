import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:weather_app/core/data/api/api_client.dart';
import 'package:weather_app/domain/failure/failure.dart';
import 'package:weather_app/features/search/data/models/search_model.dart';
import 'package:weather_app/features/search/data/repositories/search_repository_impl.dart';

import 'search_repository_test.mocks.dart';

@GenerateMocks([ApiClient, SearchModel, DioError, Exception])
void main() {
  final mockApiClient = MockApiClient();
  final mockSearchModel = MockSearchModel();
  final mockDioError = MockDioError();
  final searchRepository = SearchRepositoryImpl(apiClient: mockApiClient);
  final mockException = MockException();

  group(
    'Search repository tests',
    () {
      test(
        'Search repository returns data when searchCity method is called.',
        () async {
          mockApiClient.setSearchCityData(mockSearchModel);
          var result = await searchRepository.searchCity(input);
          expect(result.isRight(), true);
          expect(result.isLeft(), false);
          result.fold(
            (failure) => expect(true, false),
            (searchData) => expect(
                searchData, searchRepository.convertModel([_searchModel])),
          );
        },
      );

      test(
        'Search repository throws DioError when searchCity method is called.',
        () async {
          mockApiClient.setSearchCityError(mockDioError);
          var result = await searchRepository.searchCity(input);
          expect(result.isLeft(), true);
          expect(result.isRight(), false);
          result.fold(
            (error) => expect(error, const Failure.unexpectedError()),
            (searchData) => expect(true, false),
          );
        },
      );

      test(
        'Search repository throws exception when searchCity method is called.',
        () async {
          mockApiClient.setSearchCityException(mockException);
          var result = await searchRepository.searchCity(input);
          expect(result.isLeft(), true);
          expect(result.isRight(), false);
          result.fold(
            (error) => expect(error, const Failure.unexpectedError()),
            (searchData) => expect(true, false),
          );
        },
      );
    },
  );
}

const String input = 'London';

final SearchModel _searchModel = SearchModel(
    name: 'Test name', country: 'Test country', region: 'Test region');

extension ApiClientMock on ApiClient {
  void setSearchCityData(MockSearchModel mockSearchModel) {
    when(searchCity(query: input)).thenAnswer(
      (realInvocation) async {
        return [_searchModel];
      },
    );
  }

  void setSearchCityError(MockDioError mockDioError) {
    when(searchCity(query: input)).thenThrow(
      (realInvocation) async {
        return mockDioError;
      },
    );
  }

  void setSearchCityException(Exception exception) {
    when(searchCity(query: input)).thenThrow(
      (realInvocation) async {
        return exception;
      },
    );
  }
}
