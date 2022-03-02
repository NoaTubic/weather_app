import 'package:equatable/equatable.dart';
import 'package:weather_app/features/home/data/models/responses/weather_data_model.dart';
import 'package:weather_app/features/home/domain/entities/hour_forecast_entity.dart';
import 'package:weather_app/features/home/domain/entities/weather_entity.dart';

class WeatherDataEntity extends Equatable {
  final WeatherEntity weatherEntity;
  final List<HourForecastEntity> todayWeather;
  final List<HourForecastEntity> tomorrowWeather;
  const WeatherDataEntity({
    required this.weatherEntity,
    required this.todayWeather,
    required this.tomorrowWeather,
  });

  factory WeatherDataEntity.fromModel(WeatherDataModel model) {
    return WeatherDataEntity(
      weatherEntity: WeatherEntity.fromModel(model.weatherModel),
      todayWeather: model.forecastDay[0].convertHours(),
      tomorrowWeather: model.forecastDay[1].convertHours(),
    );
  }

  @override
  List<Object?> get props => [weatherEntity, todayWeather, tomorrowWeather];
}

extension ForecastDayExtension on ForecastDay {
  List<HourForecastEntity> convertHours() {
    List<HourForecastEntity> hours = [];
    for (var element in hour) {
      hours.add(HourForecastEntity.fromModel(element));
    }
    return hours;
  }
}
