import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';
import 'package:weather_app/core/data/database/database_constants.dart';
import 'package:weather_app/features/home/data/models/responses/forecast_response/forecast_response.dart';
import 'package:weather_app/features/home/data/models/responses/weather_response/weather_response.dart';
import 'package:weather_app/features/home/data/models/weather_model.dart';

part 'weather_data_model.g.dart';

@HiveType(typeId: DatabaseConstants.forecastData)
class WeatherDataModel extends Equatable {
  @HiveField(0)
  final WeatherModel weatherModel;
  @HiveField(1)
  final List<ForecastDay> forecastDay;

  const WeatherDataModel({
    required this.weatherModel,
    required this.forecastDay,
  });

  factory WeatherDataModel.fromResponse(WeatherResponse response) {
    return WeatherDataModel(
      weatherModel: WeatherModel.fromResponse(response),
      forecastDay: response.forecast!.convertForecastDays(),
    );
  }

  @override
  List<Object?> get props => [weatherModel];
}

@HiveType(typeId: DatabaseConstants.forecastDayData)
class ForecastDay {
  @HiveField(0)
  final DateTime date;
  @HiveField(1)
  final Day day;
  @HiveField(2)
  final List<Hour> hour;

  ForecastDay({
    required this.date,
    required this.day,
    required this.hour,
  });

  factory ForecastDay.fromResponse(ForecastDayResponse response) {
    return ForecastDay(
      date: response.date!,
      day: Day.fromResponse(response.day!),
      hour: response.convertHours(),
    );
  }
}

@HiveType(typeId: DatabaseConstants.dayData)
class Day {
  @HiveField(0)
  final double avgTemp;
  @HiveField(1)
  final String conditionIcon;

  Day({
    required this.avgTemp,
    required this.conditionIcon,
  });

  factory Day.fromResponse(DayResponse response) {
    return Day(
      avgTemp: response.avgTemp!,
      conditionIcon: response.conditionIcon!.weatherIconUrl!,
    );
  }
}

@HiveType(typeId: DatabaseConstants.hourData)
class Hour {
  @HiveField(0)
  final DateTime hour;
  @HiveField(1)
  final double temp;
  @HiveField(2)
  final String conditionIcon;
  @HiveField(3)
  final int chanceOfRain;
  @HiveField(4)
  final double precipMm;

  Hour(
      {required this.hour,
      required this.temp,
      required this.conditionIcon,
      required this.chanceOfRain,
      required this.precipMm});

  factory Hour.fromResponse(HourResponse response) {
    return Hour(
      hour: response.hour!,
      temp: response.temp!,
      conditionIcon: response.conditionResponse!.weatherIconUrl!,
      chanceOfRain: response.chanceOfRain!,
      precipMm: response.precipMm!,
    );
  }
}

extension ForecastModelExtension on ForecastResponse {
  List<ForecastDay> convertForecastDays() {
    List<ForecastDay> forecastDays = [];
    for (var element in forecastDay!) {
      forecastDays.add(ForecastDay.fromResponse(element));
    }
    return forecastDays;
  }
}

extension ForecastDayExtension on ForecastDayResponse {
  List<Hour> convertHours() {
    List<Hour> hours = [];
    for (var element in hour!) {
      hours.add(Hour.fromResponse(element));
    }
    return hours;
  }
}
