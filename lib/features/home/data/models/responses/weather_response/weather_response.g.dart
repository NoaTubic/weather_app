// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WeatherResponse _$$_WeatherResponseFromJson(Map<String, dynamic> json) =>
    _$_WeatherResponse(
      current: json['current'] == null
          ? null
          : CurrentResponse.fromJson(json['current'] as Map<String, dynamic>),
      location: json['location'] == null
          ? null
          : LocationResponse.fromJson(json['location'] as Map<String, dynamic>),
      forecast: json['forecast'] == null
          ? null
          : ForecastResponse.fromJson(json['forecast'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_WeatherResponseToJson(_$_WeatherResponse instance) =>
    <String, dynamic>{
      'current': instance.current,
      'location': instance.location,
      'forecast': instance.forecast,
    };

_$_CurrentResponse _$$_CurrentResponseFromJson(Map<String, dynamic> json) =>
    _$_CurrentResponse(
      temperature: (json['temp_c'] as num?)?.toDouble(),
      conditionIcon: json['condition'] == null
          ? null
          : ConditionResponse.fromJson(
              json['condition'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CurrentResponseToJson(_$_CurrentResponse instance) =>
    <String, dynamic>{
      'temp_c': instance.temperature,
      'condition': instance.conditionIcon,
    };

_$_ConditionResponse _$$_ConditionResponseFromJson(Map<String, dynamic> json) =>
    _$_ConditionResponse(
      weatherIconUrl: json['icon'] as String?,
    );

Map<String, dynamic> _$$_ConditionResponseToJson(
        _$_ConditionResponse instance) =>
    <String, dynamic>{
      'icon': instance.weatherIconUrl,
    };

_$_LocationResponse _$$_LocationResponseFromJson(Map<String, dynamic> json) =>
    _$_LocationResponse(
      cityName: json['name'] as String?,
      countryName: json['country'] as String?,
      date: json['localtime'] as String?,
    );

Map<String, dynamic> _$$_LocationResponseToJson(_$_LocationResponse instance) =>
    <String, dynamic>{
      'name': instance.cityName,
      'country': instance.countryName,
      'localtime': instance.date,
    };
