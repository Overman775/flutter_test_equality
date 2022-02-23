// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'object_level_0_freezed.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ObjectLevel0FreezedTearOff {
  const _$ObjectLevel0FreezedTearOff();

  _ObjectLevel0Freezed call(List<Object> objects) {
    return _ObjectLevel0Freezed(
      objects,
    );
  }
}

/// @nodoc
const $ObjectLevel0Freezed = _$ObjectLevel0FreezedTearOff();

/// @nodoc
mixin _$ObjectLevel0Freezed {
  List<Object> get objects => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ObjectLevel0FreezedCopyWith<ObjectLevel0Freezed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ObjectLevel0FreezedCopyWith<$Res> {
  factory $ObjectLevel0FreezedCopyWith(
          ObjectLevel0Freezed value, $Res Function(ObjectLevel0Freezed) then) =
      _$ObjectLevel0FreezedCopyWithImpl<$Res>;
  $Res call({List<Object> objects});
}

/// @nodoc
class _$ObjectLevel0FreezedCopyWithImpl<$Res>
    implements $ObjectLevel0FreezedCopyWith<$Res> {
  _$ObjectLevel0FreezedCopyWithImpl(this._value, this._then);

  final ObjectLevel0Freezed _value;
  // ignore: unused_field
  final $Res Function(ObjectLevel0Freezed) _then;

  @override
  $Res call({
    Object? objects = freezed,
  }) {
    return _then(_value.copyWith(
      objects: objects == freezed
          ? _value.objects
          : objects // ignore: cast_nullable_to_non_nullable
              as List<Object>,
    ));
  }
}

/// @nodoc
abstract class _$ObjectLevel0FreezedCopyWith<$Res>
    implements $ObjectLevel0FreezedCopyWith<$Res> {
  factory _$ObjectLevel0FreezedCopyWith(_ObjectLevel0Freezed value,
          $Res Function(_ObjectLevel0Freezed) then) =
      __$ObjectLevel0FreezedCopyWithImpl<$Res>;
  @override
  $Res call({List<Object> objects});
}

/// @nodoc
class __$ObjectLevel0FreezedCopyWithImpl<$Res>
    extends _$ObjectLevel0FreezedCopyWithImpl<$Res>
    implements _$ObjectLevel0FreezedCopyWith<$Res> {
  __$ObjectLevel0FreezedCopyWithImpl(
      _ObjectLevel0Freezed _value, $Res Function(_ObjectLevel0Freezed) _then)
      : super(_value, (v) => _then(v as _ObjectLevel0Freezed));

  @override
  _ObjectLevel0Freezed get _value => super._value as _ObjectLevel0Freezed;

  @override
  $Res call({
    Object? objects = freezed,
  }) {
    return _then(_ObjectLevel0Freezed(
      objects == freezed
          ? _value.objects
          : objects // ignore: cast_nullable_to_non_nullable
              as List<Object>,
    ));
  }
}

/// @nodoc

class _$_ObjectLevel0Freezed implements _ObjectLevel0Freezed {
  _$_ObjectLevel0Freezed(this.objects);

  @override
  final List<Object> objects;

  @override
  String toString() {
    return 'ObjectLevel0Freezed(objects: $objects)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ObjectLevel0Freezed &&
            const DeepCollectionEquality().equals(other.objects, objects));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(objects));

  @JsonKey(ignore: true)
  @override
  _$ObjectLevel0FreezedCopyWith<_ObjectLevel0Freezed> get copyWith =>
      __$ObjectLevel0FreezedCopyWithImpl<_ObjectLevel0Freezed>(
          this, _$identity);
}

abstract class _ObjectLevel0Freezed implements ObjectLevel0Freezed {
  factory _ObjectLevel0Freezed(List<Object> objects) = _$_ObjectLevel0Freezed;

  @override
  List<Object> get objects;
  @override
  @JsonKey(ignore: true)
  _$ObjectLevel0FreezedCopyWith<_ObjectLevel0Freezed> get copyWith =>
      throw _privateConstructorUsedError;
}
