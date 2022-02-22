// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'object_level_0.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ObjectLevel0TearOff {
  const _$ObjectLevel0TearOff();

  _ObjectLevel0 call(List<ObjectLevel1> objects) {
    return _ObjectLevel0(
      objects,
    );
  }
}

/// @nodoc
const $ObjectLevel0 = _$ObjectLevel0TearOff();

/// @nodoc
mixin _$ObjectLevel0 {
  List<ObjectLevel1> get objects => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ObjectLevel0CopyWith<ObjectLevel0> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ObjectLevel0CopyWith<$Res> {
  factory $ObjectLevel0CopyWith(
          ObjectLevel0 value, $Res Function(ObjectLevel0) then) =
      _$ObjectLevel0CopyWithImpl<$Res>;
  $Res call({List<ObjectLevel1> objects});
}

/// @nodoc
class _$ObjectLevel0CopyWithImpl<$Res> implements $ObjectLevel0CopyWith<$Res> {
  _$ObjectLevel0CopyWithImpl(this._value, this._then);

  final ObjectLevel0 _value;
  // ignore: unused_field
  final $Res Function(ObjectLevel0) _then;

  @override
  $Res call({
    Object? objects = freezed,
  }) {
    return _then(_value.copyWith(
      objects: objects == freezed
          ? _value.objects
          : objects // ignore: cast_nullable_to_non_nullable
              as List<ObjectLevel1>,
    ));
  }
}

/// @nodoc
abstract class _$ObjectLevel0CopyWith<$Res>
    implements $ObjectLevel0CopyWith<$Res> {
  factory _$ObjectLevel0CopyWith(
          _ObjectLevel0 value, $Res Function(_ObjectLevel0) then) =
      __$ObjectLevel0CopyWithImpl<$Res>;
  @override
  $Res call({List<ObjectLevel1> objects});
}

/// @nodoc
class __$ObjectLevel0CopyWithImpl<$Res> extends _$ObjectLevel0CopyWithImpl<$Res>
    implements _$ObjectLevel0CopyWith<$Res> {
  __$ObjectLevel0CopyWithImpl(
      _ObjectLevel0 _value, $Res Function(_ObjectLevel0) _then)
      : super(_value, (v) => _then(v as _ObjectLevel0));

  @override
  _ObjectLevel0 get _value => super._value as _ObjectLevel0;

  @override
  $Res call({
    Object? objects = freezed,
  }) {
    return _then(_ObjectLevel0(
      objects == freezed
          ? _value.objects
          : objects // ignore: cast_nullable_to_non_nullable
              as List<ObjectLevel1>,
    ));
  }
}

/// @nodoc

class _$_ObjectLevel0 implements _ObjectLevel0 {
  const _$_ObjectLevel0(this.objects);

  @override
  final List<ObjectLevel1> objects;

  @override
  String toString() {
    return 'ObjectLevel0(objects: $objects)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ObjectLevel0 &&
            const DeepCollectionEquality().equals(other.objects, objects));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(objects));

  @JsonKey(ignore: true)
  @override
  _$ObjectLevel0CopyWith<_ObjectLevel0> get copyWith =>
      __$ObjectLevel0CopyWithImpl<_ObjectLevel0>(this, _$identity);
}

abstract class _ObjectLevel0 implements ObjectLevel0 {
  const factory _ObjectLevel0(List<ObjectLevel1> objects) = _$_ObjectLevel0;

  @override
  List<ObjectLevel1> get objects;
  @override
  @JsonKey(ignore: true)
  _$ObjectLevel0CopyWith<_ObjectLevel0> get copyWith =>
      throw _privateConstructorUsedError;
}
