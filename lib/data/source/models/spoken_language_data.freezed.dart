// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'spoken_language_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SpokenLanguageData _$SpokenLanguageDataFromJson(Map<String, dynamic> json) {
  return _SpokenLanguageData.fromJson(json);
}

/// @nodoc
mixin _$SpokenLanguageData {
  String? get englishName => throw _privateConstructorUsedError;
  @JsonKey(name: 'iso_3166_1')
  String? get iso6391 => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpokenLanguageDataCopyWith<SpokenLanguageData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpokenLanguageDataCopyWith<$Res> {
  factory $SpokenLanguageDataCopyWith(
          SpokenLanguageData value, $Res Function(SpokenLanguageData) then) =
      _$SpokenLanguageDataCopyWithImpl<$Res, SpokenLanguageData>;
  @useResult
  $Res call(
      {String? englishName,
      @JsonKey(name: 'iso_3166_1') String? iso6391,
      String? name});
}

/// @nodoc
class _$SpokenLanguageDataCopyWithImpl<$Res, $Val extends SpokenLanguageData>
    implements $SpokenLanguageDataCopyWith<$Res> {
  _$SpokenLanguageDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? englishName = freezed,
    Object? iso6391 = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      englishName: freezed == englishName
          ? _value.englishName
          : englishName // ignore: cast_nullable_to_non_nullable
              as String?,
      iso6391: freezed == iso6391
          ? _value.iso6391
          : iso6391 // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SpokenLanguageDataImplCopyWith<$Res>
    implements $SpokenLanguageDataCopyWith<$Res> {
  factory _$$SpokenLanguageDataImplCopyWith(_$SpokenLanguageDataImpl value,
          $Res Function(_$SpokenLanguageDataImpl) then) =
      __$$SpokenLanguageDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? englishName,
      @JsonKey(name: 'iso_3166_1') String? iso6391,
      String? name});
}

/// @nodoc
class __$$SpokenLanguageDataImplCopyWithImpl<$Res>
    extends _$SpokenLanguageDataCopyWithImpl<$Res, _$SpokenLanguageDataImpl>
    implements _$$SpokenLanguageDataImplCopyWith<$Res> {
  __$$SpokenLanguageDataImplCopyWithImpl(_$SpokenLanguageDataImpl _value,
      $Res Function(_$SpokenLanguageDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? englishName = freezed,
    Object? iso6391 = freezed,
    Object? name = freezed,
  }) {
    return _then(_$SpokenLanguageDataImpl(
      englishName: freezed == englishName
          ? _value.englishName
          : englishName // ignore: cast_nullable_to_non_nullable
              as String?,
      iso6391: freezed == iso6391
          ? _value.iso6391
          : iso6391 // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SpokenLanguageDataImpl implements _SpokenLanguageData {
  const _$SpokenLanguageDataImpl(
      {this.englishName, @JsonKey(name: 'iso_3166_1') this.iso6391, this.name});

  factory _$SpokenLanguageDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpokenLanguageDataImplFromJson(json);

  @override
  final String? englishName;
  @override
  @JsonKey(name: 'iso_3166_1')
  final String? iso6391;
  @override
  final String? name;

  @override
  String toString() {
    return 'SpokenLanguageData(englishName: $englishName, iso6391: $iso6391, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpokenLanguageDataImpl &&
            (identical(other.englishName, englishName) ||
                other.englishName == englishName) &&
            (identical(other.iso6391, iso6391) || other.iso6391 == iso6391) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, englishName, iso6391, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpokenLanguageDataImplCopyWith<_$SpokenLanguageDataImpl> get copyWith =>
      __$$SpokenLanguageDataImplCopyWithImpl<_$SpokenLanguageDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpokenLanguageDataImplToJson(
      this,
    );
  }
}

abstract class _SpokenLanguageData implements SpokenLanguageData {
  const factory _SpokenLanguageData(
      {final String? englishName,
      @JsonKey(name: 'iso_3166_1') final String? iso6391,
      final String? name}) = _$SpokenLanguageDataImpl;

  factory _SpokenLanguageData.fromJson(Map<String, dynamic> json) =
      _$SpokenLanguageDataImpl.fromJson;

  @override
  String? get englishName;
  @override
  @JsonKey(name: 'iso_3166_1')
  String? get iso6391;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$SpokenLanguageDataImplCopyWith<_$SpokenLanguageDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
