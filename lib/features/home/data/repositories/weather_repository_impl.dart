import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_app/core/data/api/api_client.dart';
import 'package:weather_app/features/home/data/data_source/local/local_data_source.dart';
import 'package:weather_app/features/home/data/data_source/remote/remote_data_source.dart';
import 'package:weather_app/features/home/data/models/responses/weather_data_model.dart';
import 'package:weather_app/features/home/domain/entities/weather_data_entity.dart';
import 'package:weather_app/domain/failure/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:weather_app/features/home/domain/repositories/weather_repository.dart';

@LazySingleton(as: WeatherRepository)
class WeatherRepositoryImpl implements WeatherRepository {
  final RemoteDataSource remoteDataSource;
  final LocalDataSource localDataSource;

  WeatherRepositoryImpl(this.remoteDataSource, this.localDataSource);

  @override
  Future<Either<Failure, WeatherDataEntity>> getWeatherData() async {
    try {
      final weatherResponse = await remoteDataSource.getForecastWeather();
      final forecastModel = WeatherDataModel.fromResponse(weatherResponse);
      localDataSource.saveWeatherData(forecastModel);
      final weatherDataEntity = WeatherDataEntity.fromModel(forecastModel);
      return right(weatherDataEntity);
    } on DioError catch (error) {
      if (error.isNoInternetConnectionError()) {
        return left(const Failure.offline());
      }
    } catch (exception) {
      debugPrint(exception.toString());
    }
    return left(const Failure.unexpectedError());
  }
}
