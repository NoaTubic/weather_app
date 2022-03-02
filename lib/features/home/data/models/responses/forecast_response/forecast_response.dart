import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/features/home/data/models/responses/weather_response/weather_response.dart';

part 'forecast_response.g.dart';
part 'forecast_response.freezed.dart';

@freezed
class ForecastResponse with _$ForecastResponse {
  factory ForecastResponse({
    @JsonKey(name: 'forecastday') List<ForecastDayResponse>? forecastDay,
  }) = _ForecastResponse;

  factory ForecastResponse.fromJson(Map<String, dynamic> json) =>
      _$ForecastResponseFromJson(json);
}

@freezed
class ForecastDayResponse with _$ForecastDayResponse {
  factory ForecastDayResponse({
    @JsonKey(name: 'date') DateTime? date,
    @JsonKey(name: 'day') DayResponse? day,
    @JsonKey(name: 'hour') List<HourResponse>? hour,
  }) = _ForecastDayResponse;

  factory ForecastDayResponse.fromJson(Map<String, dynamic> json) =>
      _$ForecastDayResponseFromJson(json);
}

@freezed
class DayResponse with _$DayResponse {
  factory DayResponse({
    @JsonKey(name: 'avgtemp_c') double? avgTemp,
    @JsonKey(name: 'condition') ConditionResponse? conditionIcon,
  }) = _DayResponse;

  factory DayResponse.fromJson(Map<String, dynamic> json) =>
      _$DayResponseFromJson(json);
}

@freezed
class HourResponse with _$HourResponse {
  factory HourResponse({
    @JsonKey(name: 'time') DateTime? hour,
    @JsonKey(name: 'temp_c') double? temp,
    @JsonKey(name: 'condition') ConditionResponse? conditionResponse,
    @JsonKey(name: 'chance_of_rain') int? chanceOfRain,
    @JsonKey(name: 'precip_mm') double? precipMm,
  }) = _HourResponse;

  factory HourResponse.fromJson(Map<String, dynamic> json) =>
      _$HourResponseFromJson(json);
}
