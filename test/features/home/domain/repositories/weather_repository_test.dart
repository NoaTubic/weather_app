import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:weather_app/domain/failure/failure.dart';
import 'package:weather_app/features/home/data/data_source/local/local_data_source.dart';
import 'package:weather_app/features/home/data/data_source/remote/remote_data_source.dart';
import 'package:weather_app/features/home/data/models/responses/weather_data_model.dart';
import 'package:weather_app/features/home/data/models/responses/weather_response/weather_response.dart';
import 'package:weather_app/features/home/data/repositories/weather_repository_impl.dart';
import 'package:weather_app/features/home/domain/entities/weather_data_entity.dart';

import 'weather_repository_test.mocks.dart';

@GenerateMocks([LocalDataSource, RemoteDataSource, DioError, Exception])
void main() {
  final mockLocalDataSource = MockLocalDataSource();
  final mockRemoteDataSource = MockRemoteDataSource();
  final weatherRepository =
      WeatherRepositoryImpl(mockRemoteDataSource, mockLocalDataSource);
  final mockDioError = MockDioError();
  final mockException = MockException();

  group(
    'Weather repository tests',
    () {
      test(
        'Weather repository returns data when getForecastWeather method is called.',
        () async {
          final weatherResponse = await getWeatherResponse();
          final forecastModel = WeatherDataModel.fromResponse(weatherResponse);
          mockRemoteDataSource.setGetWeatherData(weatherResponse);
          var result = await weatherRepository.getWeatherData();
          expect(result.isRight(), true);
          expect(result.isLeft(), false);
          result.fold(
              (failure) => expect(true, false),
              (weatherData) => expect(
                  weatherData, WeatherDataEntity.fromModel(forecastModel)));
        },
      );

      test(
        'Weather repository throws DioError when getForecastWeather method is called.',
        () async {
          mockRemoteDataSource.setGetWeatherError(mockDioError);
          var result = await weatherRepository.getWeatherData();
          expect(result.isRight(), false);
          expect(result.isLeft(), true);
          result.fold(
            (error) => expect(error, const Failure.unexpectedError()),
            (weatherData) => expect(true, false),
          );
        },
      );

      test(
        'Weather repository throws exception when getForecastWeather method is called.',
        () async {
          mockRemoteDataSource.setGetWeatherException(mockException);
          var result = await weatherRepository.getWeatherData();
          expect(result.isRight(), false);
          expect(result.isLeft(), true);
          result.fold(
            (error) => expect(error, const Failure.unexpectedError()),
            (weatherData) => expect(true, false),
          );
        },
      );
    },
  );
}

Future<WeatherResponse> getWeatherResponse() async {
  final file = File('test/global/weather_response_mock.json');
  final response = jsonDecode(await file.readAsString());
  return WeatherResponse.fromJson(response);
}

String jsonResponse =
    '{"location":{"name":"London","region":"City of London, Greater London","country":"United Kingdom","lat":51.52,"lon":-0.11,"tz_id":"Europe/London","localtime_epoch":1646211565,"localtime":"2022-03-02 8:59"},"current":{"last_updated_epoch":1646210700,"last_updated":"2022-03-02 08:45","temp_c":7.0,"temp_f":44.6,"is_day":1,"condition":{"text":"Moderate rain","icon":"//cdn.weatherapi.com/weather/64x64/day/302.png","code":1189},"wind_mph":8.1,"wind_kph":13.0,"wind_degree":90,"wind_dir":"E","pressure_mb":1022.0,"pressure_in":30.18,"precip_mm":0.5,"precip_in":0.02,"humidity":93,"cloud":100,"feelslike_c":4.5,"feelslike_f":40.0,"vis_km":5.0,"vis_miles":3.0,"uv":2.0,"gust_mph":11.9,"gust_kph":19.1}}';

extension TestRemoteDataSource on RemoteDataSource {
  void setGetWeatherData(WeatherResponse weatherResponse) {
    when(getForecastWeather()).thenAnswer(
      (realInvocation) async {
        return weatherResponse;
      },
    );
  }

  void setGetWeatherError(MockDioError mockDioError) {
    when(getForecastWeather()).thenThrow(
      (realInvocation) async {
        return mockDioError;
      },
    );
  }

  void setGetWeatherException(Exception exception) {
    when(getForecastWeather()).thenThrow(
      (realInvocation) async {
        return exception;
      },
    );
  }
}
