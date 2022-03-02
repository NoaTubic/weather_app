import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/features/home/data/models/responses/forecast_response/forecast_response.dart';

part 'weather_response.g.dart';
part 'weather_response.freezed.dart';

@freezed
class WeatherResponse with _$WeatherResponse {
  factory WeatherResponse({
    @JsonKey(name: 'current') CurrentResponse? current,
    @JsonKey(name: 'location') LocationResponse? location,
    @JsonKey(name: 'forecast') ForecastResponse? forecast,
  }) = _WeatherResponse;

  factory WeatherResponse.fromJson(Map<String, dynamic> json) =>
      _$WeatherResponseFromJson(json);
}

@freezed
class CurrentResponse with _$CurrentResponse {
  factory CurrentResponse({
    @JsonKey(name: 'temp_c') double? temperature,
    @JsonKey(name: 'condition') ConditionResponse? conditionIcon,
  }) = _CurrentResponse;

  factory CurrentResponse.fromJson(Map<String, dynamic> json) =>
      _$CurrentResponseFromJson(json);
}

@freezed
class ConditionResponse with _$ConditionResponse {
  factory ConditionResponse({
    @JsonKey(name: 'icon') String? weatherIconUrl,
  }) = _ConditionResponse;

  factory ConditionResponse.fromJson(Map<String, dynamic> json) =>
      _$ConditionResponseFromJson(json);
}

@freezed
class LocationResponse with _$LocationResponse {
  factory LocationResponse({
    @JsonKey(name: 'name') String? cityName,
    @JsonKey(name: 'country') String? countryName,
    @JsonKey(name: 'localtime') String? date,
  }) = _LocationResponse;

  factory LocationResponse.fromJson(Map<String, dynamic> json) =>
      _$LocationResponseFromJson(json);
}
