import 'package:weather_app/features/global/utils/date_format_extension.dart';
import 'package:weather_app/features/home/data/models/weather_model.dart';
import 'package:weather_app/features/home/domain/entities/base_entity.dart';

class WeatherEntity extends BaseEntity {
  final String country;
  final String city;
  final DateTime currentDate;
  final double temperature;

  const WeatherEntity({
    required this.country,
    required this.city,
    required this.currentDate,
    required this.temperature,
    required conditionIconUrl,
  }) : super(conditionIconUrl: conditionIconUrl);

  factory WeatherEntity.fromModel(WeatherModel model) {
    return WeatherEntity(
        country: model.countryName,
        city: model.cityName,
        currentDate: model.date,
        temperature: model.temperature,
        conditionIconUrl: model.conditionIcon);
  }

  @override
  List<Object?> get props =>
      [country, city, currentDate, temperature, conditionIconUrl];
}

extension WeatherEntityExtension on WeatherEntity {
  String formatLocation() {
    return city + ', ' + country;
  }

  String formatDate() {
    return currentDate.formatDateShort();
  }
}
