part of 'weather_cubit.dart';

@freezed
class WeatherState with _$WeatherState {
  const factory WeatherState.initial() = _Initial;
  const factory WeatherState.loading() = _Loading;
  const factory WeatherState.error({required Failure failure}) = _Error;
  const factory WeatherState.loaded({
    WeatherDataEntity? weatherDataEntity,
  }) = _Loaded;
  const factory WeatherState.noInternet() = _NoInternet;
}
