import 'dart:io';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:weather_app/core/data/api/api_constants.dart';
import 'package:weather_app/features/home/data/models/responses/weather_response/weather_response.dart';
import 'package:weather_app/features/search/data/models/search_model.dart';

part 'api_client.g.dart';

@LazySingleton()
@RestApi()
abstract class ApiClient {
  @factoryMethod
  factory ApiClient(Dio dio) = _ApiClient;

  @GET('/current.json')
  Future<WeatherResponse> getRealtimeWeather();

  @GET('/forecast.json')
  Future<WeatherResponse> getForecastWeather({@Query('days') int days = 3});

  @GET('/search.json')
  Future<List<SearchModel>> searchCity({@Query(queryParameter) String? query});
}

extension DioErrorExtensions on DioError {
  bool isNoInternetConnectionError() {
    return type == DioErrorType.other &&
        error != null &&
        error is SocketException;
  }
}
