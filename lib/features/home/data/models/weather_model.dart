import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';
import 'package:weather_app/core/data/database/database_constants.dart';
import 'package:weather_app/features/home/data/models/responses/weather_response/weather_response.dart';

part 'weather_model.g.dart';

@HiveType(typeId: DatabaseConstants.weatherModel)
class WeatherModel extends Equatable {
  @HiveField(0)
  final double temperature;
  @HiveField(1)
  final String conditionIcon;
  @HiveField(2)
  final String cityName;
  @HiveField(3)
  final String countryName;
  @HiveField(4)
  final DateTime date;
  const WeatherModel({
    required this.temperature,
    required this.conditionIcon,
    required this.cityName,
    required this.countryName,
    required this.date,
  });

  factory WeatherModel.fromResponse(WeatherResponse response) {
    return WeatherModel(
      temperature: response.current!.temperature!,
      conditionIcon: response.current!.conditionIcon!.weatherIconUrl!,
      cityName: response.location!.cityName!,
      countryName: response.location!.countryName!,
      date: convertDate(response.location!.date!),
    );
  }

  static DateTime convertDate(String date) {
    return DateTime.tryParse(date.split(' ')[0]) ?? DateTime.now();
  }

  @override
  List<Object?> get props =>
      [temperature, conditionIcon, cityName, countryName, date];
}
