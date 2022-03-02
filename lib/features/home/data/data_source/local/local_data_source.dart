import 'package:weather_app/features/home/data/models/responses/weather_data_model.dart';

abstract class LocalDataSource {
  Future<WeatherDataModel> getWeatherData();
  Future<void> saveWeatherData(WeatherDataModel model);
}
