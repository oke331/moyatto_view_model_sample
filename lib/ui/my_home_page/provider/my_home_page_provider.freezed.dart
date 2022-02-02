// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'my_home_page_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MyHomePageStateTearOff {
  const _$MyHomePageStateTearOff();

  _MyHomePageState call({bool isUpdating = false}) {
    return _MyHomePageState(
      isUpdating: isUpdating,
    );
  }
}

/// @nodoc
const $MyHomePageState = _$MyHomePageStateTearOff();

/// @nodoc
mixin _$MyHomePageState {
  bool get isUpdating => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MyHomePageStateCopyWith<MyHomePageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyHomePageStateCopyWith<$Res> {
  factory $MyHomePageStateCopyWith(
          MyHomePageState value, $Res Function(MyHomePageState) then) =
      _$MyHomePageStateCopyWithImpl<$Res>;
  $Res call({bool isUpdating});
}

/// @nodoc
class _$MyHomePageStateCopyWithImpl<$Res>
    implements $MyHomePageStateCopyWith<$Res> {
  _$MyHomePageStateCopyWithImpl(this._value, this._then);

  final MyHomePageState _value;
  // ignore: unused_field
  final $Res Function(MyHomePageState) _then;

  @override
  $Res call({
    Object? isUpdating = freezed,
  }) {
    return _then(_value.copyWith(
      isUpdating: isUpdating == freezed
          ? _value.isUpdating
          : isUpdating // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$MyHomePageStateCopyWith<$Res>
    implements $MyHomePageStateCopyWith<$Res> {
  factory _$MyHomePageStateCopyWith(
          _MyHomePageState value, $Res Function(_MyHomePageState) then) =
      __$MyHomePageStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isUpdating});
}

/// @nodoc
class __$MyHomePageStateCopyWithImpl<$Res>
    extends _$MyHomePageStateCopyWithImpl<$Res>
    implements _$MyHomePageStateCopyWith<$Res> {
  __$MyHomePageStateCopyWithImpl(
      _MyHomePageState _value, $Res Function(_MyHomePageState) _then)
      : super(_value, (v) => _then(v as _MyHomePageState));

  @override
  _MyHomePageState get _value => super._value as _MyHomePageState;

  @override
  $Res call({
    Object? isUpdating = freezed,
  }) {
    return _then(_MyHomePageState(
      isUpdating: isUpdating == freezed
          ? _value.isUpdating
          : isUpdating // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_MyHomePageState implements _MyHomePageState {
  const _$_MyHomePageState({this.isUpdating = false});

  @JsonKey()
  @override
  final bool isUpdating;

  @override
  String toString() {
    return 'MyHomePageState(isUpdating: $isUpdating)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MyHomePageState &&
            const DeepCollectionEquality()
                .equals(other.isUpdating, isUpdating));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(isUpdating));

  @JsonKey(ignore: true)
  @override
  _$MyHomePageStateCopyWith<_MyHomePageState> get copyWith =>
      __$MyHomePageStateCopyWithImpl<_MyHomePageState>(this, _$identity);
}

abstract class _MyHomePageState implements MyHomePageState {
  const factory _MyHomePageState({bool isUpdating}) = _$_MyHomePageState;

  @override
  bool get isUpdating;
  @override
  @JsonKey(ignore: true)
  _$MyHomePageStateCopyWith<_MyHomePageState> get copyWith =>
      throw _privateConstructorUsedError;
}
