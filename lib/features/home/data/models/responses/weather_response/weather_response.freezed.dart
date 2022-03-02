// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'weather_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeatherResponse _$WeatherResponseFromJson(Map<String, dynamic> json) {
  return _WeatherResponse.fromJson(json);
}

/// @nodoc
class _$WeatherResponseTearOff {
  const _$WeatherResponseTearOff();

  _WeatherResponse call(
      {@JsonKey(name: 'current') CurrentResponse? current,
      @JsonKey(name: 'location') LocationResponse? location,
      @JsonKey(name: 'forecast') ForecastResponse? forecast}) {
    return _WeatherResponse(
      current: current,
      location: location,
      forecast: forecast,
    );
  }

  WeatherResponse fromJson(Map<String, Object?> json) {
    return WeatherResponse.fromJson(json);
  }
}

/// @nodoc
const $WeatherResponse = _$WeatherResponseTearOff();

/// @nodoc
mixin _$WeatherResponse {
  @JsonKey(name: 'current')
  CurrentResponse? get current => throw _privateConstructorUsedError;
  @JsonKey(name: 'location')
  LocationResponse? get location => throw _privateConstructorUsedError;
  @JsonKey(name: 'forecast')
  ForecastResponse? get forecast => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherResponseCopyWith<WeatherResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherResponseCopyWith<$Res> {
  factory $WeatherResponseCopyWith(
          WeatherResponse value, $Res Function(WeatherResponse) then) =
      _$WeatherResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'current') CurrentResponse? current,
      @JsonKey(name: 'location') LocationResponse? location,
      @JsonKey(name: 'forecast') ForecastResponse? forecast});

  $CurrentResponseCopyWith<$Res>? get current;
  $LocationResponseCopyWith<$Res>? get location;
  $ForecastResponseCopyWith<$Res>? get forecast;
}

/// @nodoc
class _$WeatherResponseCopyWithImpl<$Res>
    implements $WeatherResponseCopyWith<$Res> {
  _$WeatherResponseCopyWithImpl(this._value, this._then);

  final WeatherResponse _value;
  // ignore: unused_field
  final $Res Function(WeatherResponse) _then;

  @override
  $Res call({
    Object? current = freezed,
    Object? location = freezed,
    Object? forecast = freezed,
  }) {
    return _then(_value.copyWith(
      current: current == freezed
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as CurrentResponse?,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationResponse?,
      forecast: forecast == freezed
          ? _value.forecast
          : forecast // ignore: cast_nullable_to_non_nullable
              as ForecastResponse?,
    ));
  }

  @override
  $CurrentResponseCopyWith<$Res>? get current {
    if (_value.current == null) {
      return null;
    }

    return $CurrentResponseCopyWith<$Res>(_value.current!, (value) {
      return _then(_value.copyWith(current: value));
    });
  }

  @override
  $LocationResponseCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $LocationResponseCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value));
    });
  }

  @override
  $ForecastResponseCopyWith<$Res>? get forecast {
    if (_value.forecast == null) {
      return null;
    }

    return $ForecastResponseCopyWith<$Res>(_value.forecast!, (value) {
      return _then(_value.copyWith(forecast: value));
    });
  }
}

/// @nodoc
abstract class _$WeatherResponseCopyWith<$Res>
    implements $WeatherResponseCopyWith<$Res> {
  factory _$WeatherResponseCopyWith(
          _WeatherResponse value, $Res Function(_WeatherResponse) then) =
      __$WeatherResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'current') CurrentResponse? current,
      @JsonKey(name: 'location') LocationResponse? location,
      @JsonKey(name: 'forecast') ForecastResponse? forecast});

  @override
  $CurrentResponseCopyWith<$Res>? get current;
  @override
  $LocationResponseCopyWith<$Res>? get location;
  @override
  $ForecastResponseCopyWith<$Res>? get forecast;
}

/// @nodoc
class __$WeatherResponseCopyWithImpl<$Res>
    extends _$WeatherResponseCopyWithImpl<$Res>
    implements _$WeatherResponseCopyWith<$Res> {
  __$WeatherResponseCopyWithImpl(
      _WeatherResponse _value, $Res Function(_WeatherResponse) _then)
      : super(_value, (v) => _then(v as _WeatherResponse));

  @override
  _WeatherResponse get _value => super._value as _WeatherResponse;

  @override
  $Res call({
    Object? current = freezed,
    Object? location = freezed,
    Object? forecast = freezed,
  }) {
    return _then(_WeatherResponse(
      current: current == freezed
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as CurrentResponse?,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationResponse?,
      forecast: forecast == freezed
          ? _value.forecast
          : forecast // ignore: cast_nullable_to_non_nullable
              as ForecastResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WeatherResponse implements _WeatherResponse {
  _$_WeatherResponse(
      {@JsonKey(name: 'current') this.current,
      @JsonKey(name: 'location') this.location,
      @JsonKey(name: 'forecast') this.forecast});

  factory _$_WeatherResponse.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherResponseFromJson(json);

  @override
  @JsonKey(name: 'current')
  final CurrentResponse? current;
  @override
  @JsonKey(name: 'location')
  final LocationResponse? location;
  @override
  @JsonKey(name: 'forecast')
  final ForecastResponse? forecast;

  @override
  String toString() {
    return 'WeatherResponse(current: $current, location: $location, forecast: $forecast)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WeatherResponse &&
            const DeepCollectionEquality().equals(other.current, current) &&
            const DeepCollectionEquality().equals(other.location, location) &&
            const DeepCollectionEquality().equals(other.forecast, forecast));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(current),
      const DeepCollectionEquality().hash(location),
      const DeepCollectionEquality().hash(forecast));

  @JsonKey(ignore: true)
  @override
  _$WeatherResponseCopyWith<_WeatherResponse> get copyWith =>
      __$WeatherResponseCopyWithImpl<_WeatherResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherResponseToJson(this);
  }
}

abstract class _WeatherResponse implements WeatherResponse {
  factory _WeatherResponse(
          {@JsonKey(name: 'current') CurrentResponse? current,
          @JsonKey(name: 'location') LocationResponse? location,
          @JsonKey(name: 'forecast') ForecastResponse? forecast}) =
      _$_WeatherResponse;

  factory _WeatherResponse.fromJson(Map<String, dynamic> json) =
      _$_WeatherResponse.fromJson;

  @override
  @JsonKey(name: 'current')
  CurrentResponse? get current;
  @override
  @JsonKey(name: 'location')
  LocationResponse? get location;
  @override
  @JsonKey(name: 'forecast')
  ForecastResponse? get forecast;
  @override
  @JsonKey(ignore: true)
  _$WeatherResponseCopyWith<_WeatherResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

CurrentResponse _$CurrentResponseFromJson(Map<String, dynamic> json) {
  return _CurrentResponse.fromJson(json);
}

/// @nodoc
class _$CurrentResponseTearOff {
  const _$CurrentResponseTearOff();

  _CurrentResponse call(
      {@JsonKey(name: 'temp_c') double? temperature,
      @JsonKey(name: 'condition') ConditionResponse? conditionIcon}) {
    return _CurrentResponse(
      temperature: temperature,
      conditionIcon: conditionIcon,
    );
  }

  CurrentResponse fromJson(Map<String, Object?> json) {
    return CurrentResponse.fromJson(json);
  }
}

/// @nodoc
const $CurrentResponse = _$CurrentResponseTearOff();

/// @nodoc
mixin _$CurrentResponse {
  @JsonKey(name: 'temp_c')
  double? get temperature => throw _privateConstructorUsedError;
  @JsonKey(name: 'condition')
  ConditionResponse? get conditionIcon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrentResponseCopyWith<CurrentResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentResponseCopyWith<$Res> {
  factory $CurrentResponseCopyWith(
          CurrentResponse value, $Res Function(CurrentResponse) then) =
      _$CurrentResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'temp_c') double? temperature,
      @JsonKey(name: 'condition') ConditionResponse? conditionIcon});

  $ConditionResponseCopyWith<$Res>? get conditionIcon;
}

/// @nodoc
class _$CurrentResponseCopyWithImpl<$Res>
    implements $CurrentResponseCopyWith<$Res> {
  _$CurrentResponseCopyWithImpl(this._value, this._then);

  final CurrentResponse _value;
  // ignore: unused_field
  final $Res Function(CurrentResponse) _then;

  @override
  $Res call({
    Object? temperature = freezed,
    Object? conditionIcon = freezed,
  }) {
    return _then(_value.copyWith(
      temperature: temperature == freezed
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double?,
      conditionIcon: conditionIcon == freezed
          ? _value.conditionIcon
          : conditionIcon // ignore: cast_nullable_to_non_nullable
              as ConditionResponse?,
    ));
  }

  @override
  $ConditionResponseCopyWith<$Res>? get conditionIcon {
    if (_value.conditionIcon == null) {
      return null;
    }

    return $ConditionResponseCopyWith<$Res>(_value.conditionIcon!, (value) {
      return _then(_value.copyWith(conditionIcon: value));
    });
  }
}

/// @nodoc
abstract class _$CurrentResponseCopyWith<$Res>
    implements $CurrentResponseCopyWith<$Res> {
  factory _$CurrentResponseCopyWith(
          _CurrentResponse value, $Res Function(_CurrentResponse) then) =
      __$CurrentResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'temp_c') double? temperature,
      @JsonKey(name: 'condition') ConditionResponse? conditionIcon});

  @override
  $ConditionResponseCopyWith<$Res>? get conditionIcon;
}

/// @nodoc
class __$CurrentResponseCopyWithImpl<$Res>
    extends _$CurrentResponseCopyWithImpl<$Res>
    implements _$CurrentResponseCopyWith<$Res> {
  __$CurrentResponseCopyWithImpl(
      _CurrentResponse _value, $Res Function(_CurrentResponse) _then)
      : super(_value, (v) => _then(v as _CurrentResponse));

  @override
  _CurrentResponse get _value => super._value as _CurrentResponse;

  @override
  $Res call({
    Object? temperature = freezed,
    Object? conditionIcon = freezed,
  }) {
    return _then(_CurrentResponse(
      temperature: temperature == freezed
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double?,
      conditionIcon: conditionIcon == freezed
          ? _value.conditionIcon
          : conditionIcon // ignore: cast_nullable_to_non_nullable
              as ConditionResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CurrentResponse implements _CurrentResponse {
  _$_CurrentResponse(
      {@JsonKey(name: 'temp_c') this.temperature,
      @JsonKey(name: 'condition') this.conditionIcon});

  factory _$_CurrentResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CurrentResponseFromJson(json);

  @override
  @JsonKey(name: 'temp_c')
  final double? temperature;
  @override
  @JsonKey(name: 'condition')
  final ConditionResponse? conditionIcon;

  @override
  String toString() {
    return 'CurrentResponse(temperature: $temperature, conditionIcon: $conditionIcon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CurrentResponse &&
            const DeepCollectionEquality()
                .equals(other.temperature, temperature) &&
            const DeepCollectionEquality()
                .equals(other.conditionIcon, conditionIcon));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(temperature),
      const DeepCollectionEquality().hash(conditionIcon));

  @JsonKey(ignore: true)
  @override
  _$CurrentResponseCopyWith<_CurrentResponse> get copyWith =>
      __$CurrentResponseCopyWithImpl<_CurrentResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CurrentResponseToJson(this);
  }
}

abstract class _CurrentResponse implements CurrentResponse {
  factory _CurrentResponse(
          {@JsonKey(name: 'temp_c') double? temperature,
          @JsonKey(name: 'condition') ConditionResponse? conditionIcon}) =
      _$_CurrentResponse;

  factory _CurrentResponse.fromJson(Map<String, dynamic> json) =
      _$_CurrentResponse.fromJson;

  @override
  @JsonKey(name: 'temp_c')
  double? get temperature;
  @override
  @JsonKey(name: 'condition')
  ConditionResponse? get conditionIcon;
  @override
  @JsonKey(ignore: true)
  _$CurrentResponseCopyWith<_CurrentResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

ConditionResponse _$ConditionResponseFromJson(Map<String, dynamic> json) {
  return _ConditionResponse.fromJson(json);
}

/// @nodoc
class _$ConditionResponseTearOff {
  const _$ConditionResponseTearOff();

  _ConditionResponse call({@JsonKey(name: 'icon') String? weatherIconUrl}) {
    return _ConditionResponse(
      weatherIconUrl: weatherIconUrl,
    );
  }

  ConditionResponse fromJson(Map<String, Object?> json) {
    return ConditionResponse.fromJson(json);
  }
}

/// @nodoc
const $ConditionResponse = _$ConditionResponseTearOff();

/// @nodoc
mixin _$ConditionResponse {
  @JsonKey(name: 'icon')
  String? get weatherIconUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConditionResponseCopyWith<ConditionResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConditionResponseCopyWith<$Res> {
  factory $ConditionResponseCopyWith(
          ConditionResponse value, $Res Function(ConditionResponse) then) =
      _$ConditionResponseCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'icon') String? weatherIconUrl});
}

/// @nodoc
class _$ConditionResponseCopyWithImpl<$Res>
    implements $ConditionResponseCopyWith<$Res> {
  _$ConditionResponseCopyWithImpl(this._value, this._then);

  final ConditionResponse _value;
  // ignore: unused_field
  final $Res Function(ConditionResponse) _then;

  @override
  $Res call({
    Object? weatherIconUrl = freezed,
  }) {
    return _then(_value.copyWith(
      weatherIconUrl: weatherIconUrl == freezed
          ? _value.weatherIconUrl
          : weatherIconUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ConditionResponseCopyWith<$Res>
    implements $ConditionResponseCopyWith<$Res> {
  factory _$ConditionResponseCopyWith(
          _ConditionResponse value, $Res Function(_ConditionResponse) then) =
      __$ConditionResponseCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'icon') String? weatherIconUrl});
}

/// @nodoc
class __$ConditionResponseCopyWithImpl<$Res>
    extends _$ConditionResponseCopyWithImpl<$Res>
    implements _$ConditionResponseCopyWith<$Res> {
  __$ConditionResponseCopyWithImpl(
      _ConditionResponse _value, $Res Function(_ConditionResponse) _then)
      : super(_value, (v) => _then(v as _ConditionResponse));

  @override
  _ConditionResponse get _value => super._value as _ConditionResponse;

  @override
  $Res call({
    Object? weatherIconUrl = freezed,
  }) {
    return _then(_ConditionResponse(
      weatherIconUrl: weatherIconUrl == freezed
          ? _value.weatherIconUrl
          : weatherIconUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ConditionResponse implements _ConditionResponse {
  _$_ConditionResponse({@JsonKey(name: 'icon') this.weatherIconUrl});

  factory _$_ConditionResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ConditionResponseFromJson(json);

  @override
  @JsonKey(name: 'icon')
  final String? weatherIconUrl;

  @override
  String toString() {
    return 'ConditionResponse(weatherIconUrl: $weatherIconUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ConditionResponse &&
            const DeepCollectionEquality()
                .equals(other.weatherIconUrl, weatherIconUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(weatherIconUrl));

  @JsonKey(ignore: true)
  @override
  _$ConditionResponseCopyWith<_ConditionResponse> get copyWith =>
      __$ConditionResponseCopyWithImpl<_ConditionResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ConditionResponseToJson(this);
  }
}

abstract class _ConditionResponse implements ConditionResponse {
  factory _ConditionResponse({@JsonKey(name: 'icon') String? weatherIconUrl}) =
      _$_ConditionResponse;

  factory _ConditionResponse.fromJson(Map<String, dynamic> json) =
      _$_ConditionResponse.fromJson;

  @override
  @JsonKey(name: 'icon')
  String? get weatherIconUrl;
  @override
  @JsonKey(ignore: true)
  _$ConditionResponseCopyWith<_ConditionResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

LocationResponse _$LocationResponseFromJson(Map<String, dynamic> json) {
  return _LocationResponse.fromJson(json);
}

/// @nodoc
class _$LocationResponseTearOff {
  const _$LocationResponseTearOff();

  _LocationResponse call(
      {@JsonKey(name: 'name') String? cityName,
      @JsonKey(name: 'country') String? countryName,
      @JsonKey(name: 'localtime') String? date}) {
    return _LocationResponse(
      cityName: cityName,
      countryName: countryName,
      date: date,
    );
  }

  LocationResponse fromJson(Map<String, Object?> json) {
    return LocationResponse.fromJson(json);
  }
}

/// @nodoc
const $LocationResponse = _$LocationResponseTearOff();

/// @nodoc
mixin _$LocationResponse {
  @JsonKey(name: 'name')
  String? get cityName => throw _privateConstructorUsedError;
  @JsonKey(name: 'country')
  String? get countryName => throw _privateConstructorUsedError;
  @JsonKey(name: 'localtime')
  String? get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationResponseCopyWith<LocationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationResponseCopyWith<$Res> {
  factory $LocationResponseCopyWith(
          LocationResponse value, $Res Function(LocationResponse) then) =
      _$LocationResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'name') String? cityName,
      @JsonKey(name: 'country') String? countryName,
      @JsonKey(name: 'localtime') String? date});
}

/// @nodoc
class _$LocationResponseCopyWithImpl<$Res>
    implements $LocationResponseCopyWith<$Res> {
  _$LocationResponseCopyWithImpl(this._value, this._then);

  final LocationResponse _value;
  // ignore: unused_field
  final $Res Function(LocationResponse) _then;

  @override
  $Res call({
    Object? cityName = freezed,
    Object? countryName = freezed,
    Object? date = freezed,
  }) {
    return _then(_value.copyWith(
      cityName: cityName == freezed
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String?,
      countryName: countryName == freezed
          ? _value.countryName
          : countryName // ignore: cast_nullable_to_non_nullable
              as String?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$LocationResponseCopyWith<$Res>
    implements $LocationResponseCopyWith<$Res> {
  factory _$LocationResponseCopyWith(
          _LocationResponse value, $Res Function(_LocationResponse) then) =
      __$LocationResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'name') String? cityName,
      @JsonKey(name: 'country') String? countryName,
      @JsonKey(name: 'localtime') String? date});
}

/// @nodoc
class __$LocationResponseCopyWithImpl<$Res>
    extends _$LocationResponseCopyWithImpl<$Res>
    implements _$LocationResponseCopyWith<$Res> {
  __$LocationResponseCopyWithImpl(
      _LocationResponse _value, $Res Function(_LocationResponse) _then)
      : super(_value, (v) => _then(v as _LocationResponse));

  @override
  _LocationResponse get _value => super._value as _LocationResponse;

  @override
  $Res call({
    Object? cityName = freezed,
    Object? countryName = freezed,
    Object? date = freezed,
  }) {
    return _then(_LocationResponse(
      cityName: cityName == freezed
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String?,
      countryName: countryName == freezed
          ? _value.countryName
          : countryName // ignore: cast_nullable_to_non_nullable
              as String?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LocationResponse implements _LocationResponse {
  _$_LocationResponse(
      {@JsonKey(name: 'name') this.cityName,
      @JsonKey(name: 'country') this.countryName,
      @JsonKey(name: 'localtime') this.date});

  factory _$_LocationResponse.fromJson(Map<String, dynamic> json) =>
      _$$_LocationResponseFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String? cityName;
  @override
  @JsonKey(name: 'country')
  final String? countryName;
  @override
  @JsonKey(name: 'localtime')
  final String? date;

  @override
  String toString() {
    return 'LocationResponse(cityName: $cityName, countryName: $countryName, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LocationResponse &&
            const DeepCollectionEquality().equals(other.cityName, cityName) &&
            const DeepCollectionEquality()
                .equals(other.countryName, countryName) &&
            const DeepCollectionEquality().equals(other.date, date));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(cityName),
      const DeepCollectionEquality().hash(countryName),
      const DeepCollectionEquality().hash(date));

  @JsonKey(ignore: true)
  @override
  _$LocationResponseCopyWith<_LocationResponse> get copyWith =>
      __$LocationResponseCopyWithImpl<_LocationResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocationResponseToJson(this);
  }
}

abstract class _LocationResponse implements LocationResponse {
  factory _LocationResponse(
      {@JsonKey(name: 'name') String? cityName,
      @JsonKey(name: 'country') String? countryName,
      @JsonKey(name: 'localtime') String? date}) = _$_LocationResponse;

  factory _LocationResponse.fromJson(Map<String, dynamic> json) =
      _$_LocationResponse.fromJson;

  @override
  @JsonKey(name: 'name')
  String? get cityName;
  @override
  @JsonKey(name: 'country')
  String? get countryName;
  @override
  @JsonKey(name: 'localtime')
  String? get date;
  @override
  @JsonKey(ignore: true)
  _$LocationResponseCopyWith<_LocationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
