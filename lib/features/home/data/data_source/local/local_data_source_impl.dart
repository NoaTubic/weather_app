import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_app/core/data/database/database_constants.dart';
import 'package:weather_app/features/home/data/data_source/local/local_data_source.dart';
import 'package:weather_app/features/home/data/models/responses/weather_data_model.dart';

@Injectable(as: LocalDataSource)
class LocalDataSourceImpl implements LocalDataSource {
  @override
  Future<WeatherDataModel> getWeatherData() async {
    var box = await Hive.openBox(TableNames.weatherData.toString());
    try {
      return await box.getAt(0);
    } finally {
      box.close();
    }
  }

  @override
  Future<void> saveWeatherData(WeatherDataModel model) async {
    var box = await Hive.openBox(TableNames.weatherData.toString());
    await box.clear();
    await box.add(model);
    await box.close();
  }
}
