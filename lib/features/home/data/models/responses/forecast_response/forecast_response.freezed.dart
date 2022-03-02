// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'forecast_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ForecastResponse _$ForecastResponseFromJson(Map<String, dynamic> json) {
  return _ForecastResponse.fromJson(json);
}

/// @nodoc
class _$ForecastResponseTearOff {
  const _$ForecastResponseTearOff();

  _ForecastResponse call(
      {@JsonKey(name: 'forecastday') List<ForecastDayResponse>? forecastDay}) {
    return _ForecastResponse(
      forecastDay: forecastDay,
    );
  }

  ForecastResponse fromJson(Map<String, Object?> json) {
    return ForecastResponse.fromJson(json);
  }
}

/// @nodoc
const $ForecastResponse = _$ForecastResponseTearOff();

/// @nodoc
mixin _$ForecastResponse {
  @JsonKey(name: 'forecastday')
  List<ForecastDayResponse>? get forecastDay =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForecastResponseCopyWith<ForecastResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastResponseCopyWith<$Res> {
  factory $ForecastResponseCopyWith(
          ForecastResponse value, $Res Function(ForecastResponse) then) =
      _$ForecastResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'forecastday') List<ForecastDayResponse>? forecastDay});
}

/// @nodoc
class _$ForecastResponseCopyWithImpl<$Res>
    implements $ForecastResponseCopyWith<$Res> {
  _$ForecastResponseCopyWithImpl(this._value, this._then);

  final ForecastResponse _value;
  // ignore: unused_field
  final $Res Function(ForecastResponse) _then;

  @override
  $Res call({
    Object? forecastDay = freezed,
  }) {
    return _then(_value.copyWith(
      forecastDay: forecastDay == freezed
          ? _value.forecastDay
          : forecastDay // ignore: cast_nullable_to_non_nullable
              as List<ForecastDayResponse>?,
    ));
  }
}

/// @nodoc
abstract class _$ForecastResponseCopyWith<$Res>
    implements $ForecastResponseCopyWith<$Res> {
  factory _$ForecastResponseCopyWith(
          _ForecastResponse value, $Res Function(_ForecastResponse) then) =
      __$ForecastResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'forecastday') List<ForecastDayResponse>? forecastDay});
}

/// @nodoc
class __$ForecastResponseCopyWithImpl<$Res>
    extends _$ForecastResponseCopyWithImpl<$Res>
    implements _$ForecastResponseCopyWith<$Res> {
  __$ForecastResponseCopyWithImpl(
      _ForecastResponse _value, $Res Function(_ForecastResponse) _then)
      : super(_value, (v) => _then(v as _ForecastResponse));

  @override
  _ForecastResponse get _value => super._value as _ForecastResponse;

  @override
  $Res call({
    Object? forecastDay = freezed,
  }) {
    return _then(_ForecastResponse(
      forecastDay: forecastDay == freezed
          ? _value.forecastDay
          : forecastDay // ignore: cast_nullable_to_non_nullable
              as List<ForecastDayResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ForecastResponse implements _ForecastResponse {
  _$_ForecastResponse({@JsonKey(name: 'forecastday') this.forecastDay});

  factory _$_ForecastResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ForecastResponseFromJson(json);

  @override
  @JsonKey(name: 'forecastday')
  final List<ForecastDayResponse>? forecastDay;

  @override
  String toString() {
    return 'ForecastResponse(forecastDay: $forecastDay)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ForecastResponse &&
            const DeepCollectionEquality()
                .equals(other.forecastDay, forecastDay));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(forecastDay));

  @JsonKey(ignore: true)
  @override
  _$ForecastResponseCopyWith<_ForecastResponse> get copyWith =>
      __$ForecastResponseCopyWithImpl<_ForecastResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ForecastResponseToJson(this);
  }
}

abstract class _ForecastResponse implements ForecastResponse {
  factory _ForecastResponse(
      {@JsonKey(name: 'forecastday')
          List<ForecastDayResponse>? forecastDay}) = _$_ForecastResponse;

  factory _ForecastResponse.fromJson(Map<String, dynamic> json) =
      _$_ForecastResponse.fromJson;

  @override
  @JsonKey(name: 'forecastday')
  List<ForecastDayResponse>? get forecastDay;
  @override
  @JsonKey(ignore: true)
  _$ForecastResponseCopyWith<_ForecastResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

ForecastDayResponse _$ForecastDayResponseFromJson(Map<String, dynamic> json) {
  return _ForecastDayResponse.fromJson(json);
}

/// @nodoc
class _$ForecastDayResponseTearOff {
  const _$ForecastDayResponseTearOff();

  _ForecastDayResponse call(
      {@JsonKey(name: 'date') DateTime? date,
      @JsonKey(name: 'day') DayResponse? day,
      @JsonKey(name: 'hour') List<HourResponse>? hour}) {
    return _ForecastDayResponse(
      date: date,
      day: day,
      hour: hour,
    );
  }

  ForecastDayResponse fromJson(Map<String, Object?> json) {
    return ForecastDayResponse.fromJson(json);
  }
}

/// @nodoc
const $ForecastDayResponse = _$ForecastDayResponseTearOff();

/// @nodoc
mixin _$ForecastDayResponse {
  @JsonKey(name: 'date')
  DateTime? get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'day')
  DayResponse? get day => throw _privateConstructorUsedError;
  @JsonKey(name: 'hour')
  List<HourResponse>? get hour => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForecastDayResponseCopyWith<ForecastDayResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastDayResponseCopyWith<$Res> {
  factory $ForecastDayResponseCopyWith(
          ForecastDayResponse value, $Res Function(ForecastDayResponse) then) =
      _$ForecastDayResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'date') DateTime? date,
      @JsonKey(name: 'day') DayResponse? day,
      @JsonKey(name: 'hour') List<HourResponse>? hour});

  $DayResponseCopyWith<$Res>? get day;
}

/// @nodoc
class _$ForecastDayResponseCopyWithImpl<$Res>
    implements $ForecastDayResponseCopyWith<$Res> {
  _$ForecastDayResponseCopyWithImpl(this._value, this._then);

  final ForecastDayResponse _value;
  // ignore: unused_field
  final $Res Function(ForecastDayResponse) _then;

  @override
  $Res call({
    Object? date = freezed,
    Object? day = freezed,
    Object? hour = freezed,
  }) {
    return _then(_value.copyWith(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      day: day == freezed
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as DayResponse?,
      hour: hour == freezed
          ? _value.hour
          : hour // ignore: cast_nullable_to_non_nullable
              as List<HourResponse>?,
    ));
  }

  @override
  $DayResponseCopyWith<$Res>? get day {
    if (_value.day == null) {
      return null;
    }

    return $DayResponseCopyWith<$Res>(_value.day!, (value) {
      return _then(_value.copyWith(day: value));
    });
  }
}

/// @nodoc
abstract class _$ForecastDayResponseCopyWith<$Res>
    implements $ForecastDayResponseCopyWith<$Res> {
  factory _$ForecastDayResponseCopyWith(_ForecastDayResponse value,
          $Res Function(_ForecastDayResponse) then) =
      __$ForecastDayResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'date') DateTime? date,
      @JsonKey(name: 'day') DayResponse? day,
      @JsonKey(name: 'hour') List<HourResponse>? hour});

  @override
  $DayResponseCopyWith<$Res>? get day;
}

/// @nodoc
class __$ForecastDayResponseCopyWithImpl<$Res>
    extends _$ForecastDayResponseCopyWithImpl<$Res>
    implements _$ForecastDayResponseCopyWith<$Res> {
  __$ForecastDayResponseCopyWithImpl(
      _ForecastDayResponse _value, $Res Function(_ForecastDayResponse) _then)
      : super(_value, (v) => _then(v as _ForecastDayResponse));

  @override
  _ForecastDayResponse get _value => super._value as _ForecastDayResponse;

  @override
  $Res call({
    Object? date = freezed,
    Object? day = freezed,
    Object? hour = freezed,
  }) {
    return _then(_ForecastDayResponse(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      day: day == freezed
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as DayResponse?,
      hour: hour == freezed
          ? _value.hour
          : hour // ignore: cast_nullable_to_non_nullable
              as List<HourResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ForecastDayResponse implements _ForecastDayResponse {
  _$_ForecastDayResponse(
      {@JsonKey(name: 'date') this.date,
      @JsonKey(name: 'day') this.day,
      @JsonKey(name: 'hour') this.hour});

  factory _$_ForecastDayResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ForecastDayResponseFromJson(json);

  @override
  @JsonKey(name: 'date')
  final DateTime? date;
  @override
  @JsonKey(name: 'day')
  final DayResponse? day;
  @override
  @JsonKey(name: 'hour')
  final List<HourResponse>? hour;

  @override
  String toString() {
    return 'ForecastDayResponse(date: $date, day: $day, hour: $hour)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ForecastDayResponse &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.day, day) &&
            const DeepCollectionEquality().equals(other.hour, hour));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(day),
      const DeepCollectionEquality().hash(hour));

  @JsonKey(ignore: true)
  @override
  _$ForecastDayResponseCopyWith<_ForecastDayResponse> get copyWith =>
      __$ForecastDayResponseCopyWithImpl<_ForecastDayResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ForecastDayResponseToJson(this);
  }
}

abstract class _ForecastDayResponse implements ForecastDayResponse {
  factory _ForecastDayResponse(
          {@JsonKey(name: 'date') DateTime? date,
          @JsonKey(name: 'day') DayResponse? day,
          @JsonKey(name: 'hour') List<HourResponse>? hour}) =
      _$_ForecastDayResponse;

  factory _ForecastDayResponse.fromJson(Map<String, dynamic> json) =
      _$_ForecastDayResponse.fromJson;

  @override
  @JsonKey(name: 'date')
  DateTime? get date;
  @override
  @JsonKey(name: 'day')
  DayResponse? get day;
  @override
  @JsonKey(name: 'hour')
  List<HourResponse>? get hour;
  @override
  @JsonKey(ignore: true)
  _$ForecastDayResponseCopyWith<_ForecastDayResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

DayResponse _$DayResponseFromJson(Map<String, dynamic> json) {
  return _DayResponse.fromJson(json);
}

/// @nodoc
class _$DayResponseTearOff {
  const _$DayResponseTearOff();

  _DayResponse call(
      {@JsonKey(name: 'avgtemp_c') double? avgTemp,
      @JsonKey(name: 'condition') ConditionResponse? conditionIcon}) {
    return _DayResponse(
      avgTemp: avgTemp,
      conditionIcon: conditionIcon,
    );
  }

  DayResponse fromJson(Map<String, Object?> json) {
    return DayResponse.fromJson(json);
  }
}

/// @nodoc
const $DayResponse = _$DayResponseTearOff();

/// @nodoc
mixin _$DayResponse {
  @JsonKey(name: 'avgtemp_c')
  double? get avgTemp => throw _privateConstructorUsedError;
  @JsonKey(name: 'condition')
  ConditionResponse? get conditionIcon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DayResponseCopyWith<DayResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DayResponseCopyWith<$Res> {
  factory $DayResponseCopyWith(
          DayResponse value, $Res Function(DayResponse) then) =
      _$DayResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'avgtemp_c') double? avgTemp,
      @JsonKey(name: 'condition') ConditionResponse? conditionIcon});

  $ConditionResponseCopyWith<$Res>? get conditionIcon;
}

/// @nodoc
class _$DayResponseCopyWithImpl<$Res> implements $DayResponseCopyWith<$Res> {
  _$DayResponseCopyWithImpl(this._value, this._then);

  final DayResponse _value;
  // ignore: unused_field
  final $Res Function(DayResponse) _then;

  @override
  $Res call({
    Object? avgTemp = freezed,
    Object? conditionIcon = freezed,
  }) {
    return _then(_value.copyWith(
      avgTemp: avgTemp == freezed
          ? _value.avgTemp
          : avgTemp // ignore: cast_nullable_to_non_nullable
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
abstract class _$DayResponseCopyWith<$Res>
    implements $DayResponseCopyWith<$Res> {
  factory _$DayResponseCopyWith(
          _DayResponse value, $Res Function(_DayResponse) then) =
      __$DayResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'avgtemp_c') double? avgTemp,
      @JsonKey(name: 'condition') ConditionResponse? conditionIcon});

  @override
  $ConditionResponseCopyWith<$Res>? get conditionIcon;
}

/// @nodoc
class __$DayResponseCopyWithImpl<$Res> extends _$DayResponseCopyWithImpl<$Res>
    implements _$DayResponseCopyWith<$Res> {
  __$DayResponseCopyWithImpl(
      _DayResponse _value, $Res Function(_DayResponse) _then)
      : super(_value, (v) => _then(v as _DayResponse));

  @override
  _DayResponse get _value => super._value as _DayResponse;

  @override
  $Res call({
    Object? avgTemp = freezed,
    Object? conditionIcon = freezed,
  }) {
    return _then(_DayResponse(
      avgTemp: avgTemp == freezed
          ? _value.avgTemp
          : avgTemp // ignore: cast_nullable_to_non_nullable
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
class _$_DayResponse implements _DayResponse {
  _$_DayResponse(
      {@JsonKey(name: 'avgtemp_c') this.avgTemp,
      @JsonKey(name: 'condition') this.conditionIcon});

  factory _$_DayResponse.fromJson(Map<String, dynamic> json) =>
      _$$_DayResponseFromJson(json);

  @override
  @JsonKey(name: 'avgtemp_c')
  final double? avgTemp;
  @override
  @JsonKey(name: 'condition')
  final ConditionResponse? conditionIcon;

  @override
  String toString() {
    return 'DayResponse(avgTemp: $avgTemp, conditionIcon: $conditionIcon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DayResponse &&
            const DeepCollectionEquality().equals(other.avgTemp, avgTemp) &&
            const DeepCollectionEquality()
                .equals(other.conditionIcon, conditionIcon));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(avgTemp),
      const DeepCollectionEquality().hash(conditionIcon));

  @JsonKey(ignore: true)
  @override
  _$DayResponseCopyWith<_DayResponse> get copyWith =>
      __$DayResponseCopyWithImpl<_DayResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DayResponseToJson(this);
  }
}

abstract class _DayResponse implements DayResponse {
  factory _DayResponse(
          {@JsonKey(name: 'avgtemp_c') double? avgTemp,
          @JsonKey(name: 'condition') ConditionResponse? conditionIcon}) =
      _$_DayResponse;

  factory _DayResponse.fromJson(Map<String, dynamic> json) =
      _$_DayResponse.fromJson;

  @override
  @JsonKey(name: 'avgtemp_c')
  double? get avgTemp;
  @override
  @JsonKey(name: 'condition')
  ConditionResponse? get conditionIcon;
  @override
  @JsonKey(ignore: true)
  _$DayResponseCopyWith<_DayResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

HourResponse _$HourResponseFromJson(Map<String, dynamic> json) {
  return _HourResponse.fromJson(json);
}

/// @nodoc
class _$HourResponseTearOff {
  const _$HourResponseTearOff();

  _HourResponse call(
      {@JsonKey(name: 'time') DateTime? hour,
      @JsonKey(name: 'temp_c') double? temp,
      @JsonKey(name: 'condition') ConditionResponse? conditionResponse,
      @JsonKey(name: 'chance_of_rain') int? chanceOfRain,
      @JsonKey(name: 'precip_mm') double? precipMm}) {
    return _HourResponse(
      hour: hour,
      temp: temp,
      conditionResponse: conditionResponse,
      chanceOfRain: chanceOfRain,
      precipMm: precipMm,
    );
  }

  HourResponse fromJson(Map<String, Object?> json) {
    return HourResponse.fromJson(json);
  }
}

/// @nodoc
const $HourResponse = _$HourResponseTearOff();

/// @nodoc
mixin _$HourResponse {
  @JsonKey(name: 'time')
  DateTime? get hour => throw _privateConstructorUsedError;
  @JsonKey(name: 'temp_c')
  double? get temp => throw _privateConstructorUsedError;
  @JsonKey(name: 'condition')
  ConditionResponse? get conditionResponse =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'chance_of_rain')
  int? get chanceOfRain => throw _privateConstructorUsedError;
  @JsonKey(name: 'precip_mm')
  double? get precipMm => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HourResponseCopyWith<HourResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HourResponseCopyWith<$Res> {
  factory $HourResponseCopyWith(
          HourResponse value, $Res Function(HourResponse) then) =
      _$HourResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'time') DateTime? hour,
      @JsonKey(name: 'temp_c') double? temp,
      @JsonKey(name: 'condition') ConditionResponse? conditionResponse,
      @JsonKey(name: 'chance_of_rain') int? chanceOfRain,
      @JsonKey(name: 'precip_mm') double? precipMm});

  $ConditionResponseCopyWith<$Res>? get conditionResponse;
}

/// @nodoc
class _$HourResponseCopyWithImpl<$Res> implements $HourResponseCopyWith<$Res> {
  _$HourResponseCopyWithImpl(this._value, this._then);

  final HourResponse _value;
  // ignore: unused_field
  final $Res Function(HourResponse) _then;

  @override
  $Res call({
    Object? hour = freezed,
    Object? temp = freezed,
    Object? conditionResponse = freezed,
    Object? chanceOfRain = freezed,
    Object? precipMm = freezed,
  }) {
    return _then(_value.copyWith(
      hour: hour == freezed
          ? _value.hour
          : hour // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      temp: temp == freezed
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double?,
      conditionResponse: conditionResponse == freezed
          ? _value.conditionResponse
          : conditionResponse // ignore: cast_nullable_to_non_nullable
              as ConditionResponse?,
      chanceOfRain: chanceOfRain == freezed
          ? _value.chanceOfRain
          : chanceOfRain // ignore: cast_nullable_to_non_nullable
              as int?,
      precipMm: precipMm == freezed
          ? _value.precipMm
          : precipMm // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }

  @override
  $ConditionResponseCopyWith<$Res>? get conditionResponse {
    if (_value.conditionResponse == null) {
      return null;
    }

    return $ConditionResponseCopyWith<$Res>(_value.conditionResponse!, (value) {
      return _then(_value.copyWith(conditionResponse: value));
    });
  }
}

/// @nodoc
abstract class _$HourResponseCopyWith<$Res>
    implements $HourResponseCopyWith<$Res> {
  factory _$HourResponseCopyWith(
          _HourResponse value, $Res Function(_HourResponse) then) =
      __$HourResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'time') DateTime? hour,
      @JsonKey(name: 'temp_c') double? temp,
      @JsonKey(name: 'condition') ConditionResponse? conditionResponse,
      @JsonKey(name: 'chance_of_rain') int? chanceOfRain,
      @JsonKey(name: 'precip_mm') double? precipMm});

  @override
  $ConditionResponseCopyWith<$Res>? get conditionResponse;
}

/// @nodoc
class __$HourResponseCopyWithImpl<$Res> extends _$HourResponseCopyWithImpl<$Res>
    implements _$HourResponseCopyWith<$Res> {
  __$HourResponseCopyWithImpl(
      _HourResponse _value, $Res Function(_HourResponse) _then)
      : super(_value, (v) => _then(v as _HourResponse));

  @override
  _HourResponse get _value => super._value as _HourResponse;

  @override
  $Res call({
    Object? hour = freezed,
    Object? temp = freezed,
    Object? conditionResponse = freezed,
    Object? chanceOfRain = freezed,
    Object? precipMm = freezed,
  }) {
    return _then(_HourResponse(
      hour: hour == freezed
          ? _value.hour
          : hour // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      temp: temp == freezed
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double?,
      conditionResponse: conditionResponse == freezed
          ? _value.conditionResponse
          : conditionResponse // ignore: cast_nullable_to_non_nullable
              as ConditionResponse?,
      chanceOfRain: chanceOfRain == freezed
          ? _value.chanceOfRain
          : chanceOfRain // ignore: cast_nullable_to_non_nullable
              as int?,
      precipMm: precipMm == freezed
          ? _value.precipMm
          : precipMm // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HourResponse implements _HourResponse {
  _$_HourResponse(
      {@JsonKey(name: 'time') this.hour,
      @JsonKey(name: 'temp_c') this.temp,
      @JsonKey(name: 'condition') this.conditionResponse,
      @JsonKey(name: 'chance_of_rain') this.chanceOfRain,
      @JsonKey(name: 'precip_mm') this.precipMm});

  factory _$_HourResponse.fromJson(Map<String, dynamic> json) =>
      _$$_HourResponseFromJson(json);

  @override
  @JsonKey(name: 'time')
  final DateTime? hour;
  @override
  @JsonKey(name: 'temp_c')
  final double? temp;
  @override
  @JsonKey(name: 'condition')
  final ConditionResponse? conditionResponse;
  @override
  @JsonKey(name: 'chance_of_rain')
  final int? chanceOfRain;
  @override
  @JsonKey(name: 'precip_mm')
  final double? precipMm;

  @override
  String toString() {
    return 'HourResponse(hour: $hour, temp: $temp, conditionResponse: $conditionResponse, chanceOfRain: $chanceOfRain, precipMm: $precipMm)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HourResponse &&
            const DeepCollectionEquality().equals(other.hour, hour) &&
            const DeepCollectionEquality().equals(other.temp, temp) &&
            const DeepCollectionEquality()
                .equals(other.conditionResponse, conditionResponse) &&
            const DeepCollectionEquality()
                .equals(other.chanceOfRain, chanceOfRain) &&
            const DeepCollectionEquality().equals(other.precipMm, precipMm));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(hour),
      const DeepCollectionEquality().hash(temp),
      const DeepCollectionEquality().hash(conditionResponse),
      const DeepCollectionEquality().hash(chanceOfRain),
      const DeepCollectionEquality().hash(precipMm));

  @JsonKey(ignore: true)
  @override
  _$HourResponseCopyWith<_HourResponse> get copyWith =>
      __$HourResponseCopyWithImpl<_HourResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HourResponseToJson(this);
  }
}

abstract class _HourResponse implements HourResponse {
  factory _HourResponse(
      {@JsonKey(name: 'time') DateTime? hour,
      @JsonKey(name: 'temp_c') double? temp,
      @JsonKey(name: 'condition') ConditionResponse? conditionResponse,
      @JsonKey(name: 'chance_of_rain') int? chanceOfRain,
      @JsonKey(name: 'precip_mm') double? precipMm}) = _$_HourResponse;

  factory _HourResponse.fromJson(Map<String, dynamic> json) =
      _$_HourResponse.fromJson;

  @override
  @JsonKey(name: 'time')
  DateTime? get hour;
  @override
  @JsonKey(name: 'temp_c')
  double? get temp;
  @override
  @JsonKey(name: 'condition')
  ConditionResponse? get conditionResponse;
  @override
  @JsonKey(name: 'chance_of_rain')
  int? get chanceOfRain;
  @override
  @JsonKey(name: 'precip_mm')
  double? get precipMm;
  @override
  @JsonKey(ignore: true)
  _$HourResponseCopyWith<_HourResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
