// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'production_country_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductionCountryData _$ProductionCountryDataFromJson(
    Map<String, dynamic> json) {
  return _ProductionCountryData.fromJson(json);
}

/// @nodoc
mixin _$ProductionCountryData {
  @JsonKey(name: 'iso_3166_1')
  String? get iso31661 => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductionCountryDataCopyWith<ProductionCountryData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductionCountryDataCopyWith<$Res> {
  factory $ProductionCountryDataCopyWith(ProductionCountryData value,
          $Res Function(ProductionCountryData) then) =
      _$ProductionCountryDataCopyWithImpl<$Res, ProductionCountryData>;
  @useResult
  $Res call({@JsonKey(name: 'iso_3166_1') String? iso31661, String? name});
}

/// @nodoc
class _$ProductionCountryDataCopyWithImpl<$Res,
        $Val extends ProductionCountryData>
    implements $ProductionCountryDataCopyWith<$Res> {
  _$ProductionCountryDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iso31661 = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      iso31661: freezed == iso31661
          ? _value.iso31661
          : iso31661 // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductionCountryDataImplCopyWith<$Res>
    implements $ProductionCountryDataCopyWith<$Res> {
  factory _$$ProductionCountryDataImplCopyWith(
          _$ProductionCountryDataImpl value,
          $Res Function(_$ProductionCountryDataImpl) then) =
      __$$ProductionCountryDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'iso_3166_1') String? iso31661, String? name});
}

/// @nodoc
class __$$ProductionCountryDataImplCopyWithImpl<$Res>
    extends _$ProductionCountryDataCopyWithImpl<$Res,
        _$ProductionCountryDataImpl>
    implements _$$ProductionCountryDataImplCopyWith<$Res> {
  __$$ProductionCountryDataImplCopyWithImpl(_$ProductionCountryDataImpl _value,
      $Res Function(_$ProductionCountryDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iso31661 = freezed,
    Object? name = freezed,
  }) {
    return _then(_$ProductionCountryDataImpl(
      iso31661: freezed == iso31661
          ? _value.iso31661
          : iso31661 // ignore: cast_nullable_to_non_nullable
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
class _$ProductionCountryDataImpl implements _ProductionCountryData {
  const _$ProductionCountryDataImpl(
      {@JsonKey(name: 'iso_3166_1') this.iso31661, this.name});

  factory _$ProductionCountryDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductionCountryDataImplFromJson(json);

  @override
  @JsonKey(name: 'iso_3166_1')
  final String? iso31661;
  @override
  final String? name;

  @override
  String toString() {
    return 'ProductionCountryData(iso31661: $iso31661, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductionCountryDataImpl &&
            (identical(other.iso31661, iso31661) ||
                other.iso31661 == iso31661) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, iso31661, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductionCountryDataImplCopyWith<_$ProductionCountryDataImpl>
      get copyWith => __$$ProductionCountryDataImplCopyWithImpl<
          _$ProductionCountryDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductionCountryDataImplToJson(
      this,
    );
  }
}

abstract class _ProductionCountryData implements ProductionCountryData {
  const factory _ProductionCountryData(
      {@JsonKey(name: 'iso_3166_1') final String? iso31661,
      final String? name}) = _$ProductionCountryDataImpl;

  factory _ProductionCountryData.fromJson(Map<String, dynamic> json) =
      _$ProductionCountryDataImpl.fromJson;

  @override
  @JsonKey(name: 'iso_3166_1')
  String? get iso31661;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$ProductionCountryDataImplCopyWith<_$ProductionCountryDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
