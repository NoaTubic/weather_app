import 'package:hive_flutter/adapters.dart';
import 'package:weather_app/features/home/data/models/responses/weather_data_model.dart';
import 'package:weather_app/features/home/data/models/weather_model.dart';

Future<void> configureDatabase({String path = ''}) async {
  if (path.isEmpty) {
    await Hive.initFlutter();
  } else {
    Hive.init(path);
  }
  Hive.registerAdapter(WeatherModelAdapter());
  Hive.registerAdapter(WeatherDataModelAdapter());
  Hive.registerAdapter(ForecastDayAdapter());
  Hive.registerAdapter(DayAdapter());
  Hive.registerAdapter(HourAdapter());
}
