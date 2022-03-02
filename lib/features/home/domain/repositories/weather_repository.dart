import 'package:dartz/dartz.dart';
import 'package:weather_app/domain/failure/failure.dart';
import 'package:weather_app/features/home/domain/entities/weather_data_entity.dart';

abstract class WeatherRepository {
  Future<Either<Failure, WeatherDataEntity>> getWeatherData();
}
