import 'package:weather_app/features/home/data/models/responses/weather_response/weather_response.dart';

abstract class RemoteDataSource {
  Future<WeatherResponse> getCurrentWeather();
  Future<WeatherResponse> getForecastWeather();
}
