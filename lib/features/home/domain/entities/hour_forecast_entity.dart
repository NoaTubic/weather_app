import 'package:weather_app/features/global/utils/date_format_extension.dart';
import 'package:weather_app/features/home/data/models/responses/weather_data_model.dart';
import 'package:weather_app/features/home/domain/entities/base_entity.dart';

class HourForecastEntity extends BaseEntity {
  final DateTime time;
  final double temperature;
  final int chanceOfRain;
  final double precipMm;

  String get fullConditionIconUrl {
    return 'https:' + conditionIconUrl;
  }

  const HourForecastEntity(
      {required conditionIconUrl,
      required this.time,
      required this.temperature,
      required this.chanceOfRain,
      required this.precipMm})
      : super(conditionIconUrl: conditionIconUrl);

  factory HourForecastEntity.fromModel(Hour model) {
    return HourForecastEntity(
        conditionIconUrl: model.conditionIcon,
        time: model.hour,
        temperature: model.temp,
        chanceOfRain: model.chanceOfRain,
        precipMm: model.precipMm);
  }

  @override
  List<Object?> get props =>
      [time, temperature, chanceOfRain, precipMm, conditionIconUrl];
}

extension HourForecastEntityExtension on HourForecastEntity {
  String formatDate() {
    return time.formatHours();
  }

  String formatHour() {
    return time.formatHours24();
  }
}
