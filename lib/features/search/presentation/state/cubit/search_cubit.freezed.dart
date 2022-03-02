// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SearchStateTearOff {
  const _$SearchStateTearOff();

  _SearchState call(
      {bool? isLoading, List<SearchEntity>? searchEntity, Failure? failure}) {
    return _SearchState(
      isLoading: isLoading,
      searchEntity: searchEntity,
      failure: failure,
    );
  }
}

/// @nodoc
const $SearchState = _$SearchStateTearOff();

/// @nodoc
mixin _$SearchState {
  bool? get isLoading => throw _privateConstructorUsedError;
  List<SearchEntity>? get searchEntity => throw _privateConstructorUsedError;
  Failure? get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchStateCopyWith<SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res>;
  $Res call(
      {bool? isLoading, List<SearchEntity>? searchEntity, Failure? failure});

  $FailureCopyWith<$Res>? get failure;
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res> implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  final SearchState _value;
  // ignore: unused_field
  final $Res Function(SearchState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? searchEntity = freezed,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      searchEntity: searchEntity == freezed
          ? _value.searchEntity
          : searchEntity // ignore: cast_nullable_to_non_nullable
              as List<SearchEntity>?,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }

  @override
  $FailureCopyWith<$Res>? get failure {
    if (_value.failure == null) {
      return null;
    }

    return $FailureCopyWith<$Res>(_value.failure!, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc
abstract class _$SearchStateCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory _$SearchStateCopyWith(
          _SearchState value, $Res Function(_SearchState) then) =
      __$SearchStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool? isLoading, List<SearchEntity>? searchEntity, Failure? failure});

  @override
  $FailureCopyWith<$Res>? get failure;
}

/// @nodoc
class __$SearchStateCopyWithImpl<$Res> extends _$SearchStateCopyWithImpl<$Res>
    implements _$SearchStateCopyWith<$Res> {
  __$SearchStateCopyWithImpl(
      _SearchState _value, $Res Function(_SearchState) _then)
      : super(_value, (v) => _then(v as _SearchState));

  @override
  _SearchState get _value => super._value as _SearchState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? searchEntity = freezed,
    Object? failure = freezed,
  }) {
    return _then(_SearchState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      searchEntity: searchEntity == freezed
          ? _value.searchEntity
          : searchEntity // ignore: cast_nullable_to_non_nullable
              as List<SearchEntity>?,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }
}

/// @nodoc

class _$_SearchState implements _SearchState {
  _$_SearchState({this.isLoading, this.searchEntity, this.failure});

  @override
  final bool? isLoading;
  @override
  final List<SearchEntity>? searchEntity;
  @override
  final Failure? failure;

  @override
  String toString() {
    return 'SearchState(isLoading: $isLoading, searchEntity: $searchEntity, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SearchState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.searchEntity, searchEntity) &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(searchEntity),
      const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$SearchStateCopyWith<_SearchState> get copyWith =>
      __$SearchStateCopyWithImpl<_SearchState>(this, _$identity);
}

abstract class _SearchState implements SearchState {
  factory _SearchState(
      {bool? isLoading,
      List<SearchEntity>? searchEntity,
      Failure? failure}) = _$_SearchState;

  @override
  bool? get isLoading;
  @override
  List<SearchEntity>? get searchEntity;
  @override
  Failure? get failure;
  @override
  @JsonKey(ignore: true)
  _$SearchStateCopyWith<_SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}
