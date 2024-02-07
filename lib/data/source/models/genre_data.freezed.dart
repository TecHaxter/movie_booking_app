// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'genre_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GenreData _$GenreDataFromJson(Map<String, dynamic> json) {
  return _GenreData.fromJson(json);
}

/// @nodoc
mixin _$GenreData {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GenreDataCopyWith<GenreData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenreDataCopyWith<$Res> {
  factory $GenreDataCopyWith(GenreData value, $Res Function(GenreData) then) =
      _$GenreDataCopyWithImpl<$Res, GenreData>;
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class _$GenreDataCopyWithImpl<$Res, $Val extends GenreData>
    implements $GenreDataCopyWith<$Res> {
  _$GenreDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GenreDataImplCopyWith<$Res>
    implements $GenreDataCopyWith<$Res> {
  factory _$$GenreDataImplCopyWith(
          _$GenreDataImpl value, $Res Function(_$GenreDataImpl) then) =
      __$$GenreDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class __$$GenreDataImplCopyWithImpl<$Res>
    extends _$GenreDataCopyWithImpl<$Res, _$GenreDataImpl>
    implements _$$GenreDataImplCopyWith<$Res> {
  __$$GenreDataImplCopyWithImpl(
      _$GenreDataImpl _value, $Res Function(_$GenreDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$GenreDataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GenreDataImpl implements _GenreData {
  const _$GenreDataImpl({this.id, this.name});

  factory _$GenreDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$GenreDataImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'GenreData(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenreDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GenreDataImplCopyWith<_$GenreDataImpl> get copyWith =>
      __$$GenreDataImplCopyWithImpl<_$GenreDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GenreDataImplToJson(
      this,
    );
  }
}

abstract class _GenreData implements GenreData {
  const factory _GenreData({final int? id, final String? name}) =
      _$GenreDataImpl;

  factory _GenreData.fromJson(Map<String, dynamic> json) =
      _$GenreDataImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$GenreDataImplCopyWith<_$GenreDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
