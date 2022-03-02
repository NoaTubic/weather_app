// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ForecastResponse _$$_ForecastResponseFromJson(Map<String, dynamic> json) =>
    _$_ForecastResponse(
      forecastDay: (json['forecastday'] as List<dynamic>?)
          ?.map((e) => ForecastDayResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ForecastResponseToJson(_$_ForecastResponse instance) =>
    <String, dynamic>{
      'forecastday': instance.forecastDay,
    };

_$_ForecastDayResponse _$$_ForecastDayResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ForecastDayResponse(
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      day: json['day'] == null
          ? null
          : DayResponse.fromJson(json['day'] as Map<String, dynamic>),
      hour: (json['hour'] as List<dynamic>?)
          ?.map((e) => HourResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ForecastDayResponseToJson(
        _$_ForecastDayResponse instance) =>
    <String, dynamic>{
      'date': instance.date?.toIso8601String(),
      'day': instance.day,
      'hour': instance.hour,
    };

_$_DayResponse _$$_DayResponseFromJson(Map<String, dynamic> json) =>
    _$_DayResponse(
      avgTemp: (json['avgtemp_c'] as num?)?.toDouble(),
      conditionIcon: json['condition'] == null
          ? null
          : ConditionResponse.fromJson(
              json['condition'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DayResponseToJson(_$_DayResponse instance) =>
    <String, dynamic>{
      'avgtemp_c': instance.avgTemp,
      'condition': instance.conditionIcon,
    };

_$_HourResponse _$$_HourResponseFromJson(Map<String, dynamic> json) =>
    _$_HourResponse(
      hour:
          json['time'] == null ? null : DateTime.parse(json['time'] as String),
      temp: (json['temp_c'] as num?)?.toDouble(),
      conditionResponse: json['condition'] == null
          ? null
          : ConditionResponse.fromJson(
              json['condition'] as Map<String, dynamic>),
      chanceOfRain: json['chance_of_rain'] as int?,
      precipMm: (json['precip_mm'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_HourResponseToJson(_$_HourResponse instance) =>
    <String, dynamic>{
      'time': instance.hour?.toIso8601String(),
      'temp_c': instance.temp,
      'condition': instance.conditionResponse,
      'chance_of_rain': instance.chanceOfRain,
      'precip_mm': instance.precipMm,
    };
