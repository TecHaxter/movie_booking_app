// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'production_company_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductionCompanyData _$ProductionCompanyDataFromJson(
    Map<String, dynamic> json) {
  return _ProductionCompanyData.fromJson(json);
}

/// @nodoc
mixin _$ProductionCompanyData {
  int? get id => throw _privateConstructorUsedError;
  String? get logoPath => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get originCountry => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductionCompanyDataCopyWith<ProductionCompanyData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductionCompanyDataCopyWith<$Res> {
  factory $ProductionCompanyDataCopyWith(ProductionCompanyData value,
          $Res Function(ProductionCompanyData) then) =
      _$ProductionCompanyDataCopyWithImpl<$Res, ProductionCompanyData>;
  @useResult
  $Res call({int? id, String? logoPath, String? name, String? originCountry});
}

/// @nodoc
class _$ProductionCompanyDataCopyWithImpl<$Res,
        $Val extends ProductionCompanyData>
    implements $ProductionCompanyDataCopyWith<$Res> {
  _$ProductionCompanyDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? logoPath = freezed,
    Object? name = freezed,
    Object? originCountry = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      logoPath: freezed == logoPath
          ? _value.logoPath
          : logoPath // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      originCountry: freezed == originCountry
          ? _value.originCountry
          : originCountry // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductionCompanyDataImplCopyWith<$Res>
    implements $ProductionCompanyDataCopyWith<$Res> {
  factory _$$ProductionCompanyDataImplCopyWith(
          _$ProductionCompanyDataImpl value,
          $Res Function(_$ProductionCompanyDataImpl) then) =
      __$$ProductionCompanyDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? logoPath, String? name, String? originCountry});
}

/// @nodoc
class __$$ProductionCompanyDataImplCopyWithImpl<$Res>
    extends _$ProductionCompanyDataCopyWithImpl<$Res,
        _$ProductionCompanyDataImpl>
    implements _$$ProductionCompanyDataImplCopyWith<$Res> {
  __$$ProductionCompanyDataImplCopyWithImpl(_$ProductionCompanyDataImpl _value,
      $Res Function(_$ProductionCompanyDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? logoPath = freezed,
    Object? name = freezed,
    Object? originCountry = freezed,
  }) {
    return _then(_$ProductionCompanyDataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      logoPath: freezed == logoPath
          ? _value.logoPath
          : logoPath // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      originCountry: freezed == originCountry
          ? _value.originCountry
          : originCountry // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductionCompanyDataImpl implements _ProductionCompanyData {
  const _$ProductionCompanyDataImpl(
      {this.id, this.logoPath, this.name, this.originCountry});

  factory _$ProductionCompanyDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductionCompanyDataImplFromJson(json);

  @override
  final int? id;
  @override
  final String? logoPath;
  @override
  final String? name;
  @override
  final String? originCountry;

  @override
  String toString() {
    return 'ProductionCompanyData(id: $id, logoPath: $logoPath, name: $name, originCountry: $originCountry)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductionCompanyDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.logoPath, logoPath) ||
                other.logoPath == logoPath) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.originCountry, originCountry) ||
                other.originCountry == originCountry));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, logoPath, name, originCountry);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductionCompanyDataImplCopyWith<_$ProductionCompanyDataImpl>
      get copyWith => __$$ProductionCompanyDataImplCopyWithImpl<
          _$ProductionCompanyDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductionCompanyDataImplToJson(
      this,
    );
  }
}

abstract class _ProductionCompanyData implements ProductionCompanyData {
  const factory _ProductionCompanyData(
      {final int? id,
      final String? logoPath,
      final String? name,
      final String? originCountry}) = _$ProductionCompanyDataImpl;

  factory _ProductionCompanyData.fromJson(Map<String, dynamic> json) =
      _$ProductionCompanyDataImpl.fromJson;

  @override
  int? get id;
  @override
  String? get logoPath;
  @override
  String? get name;
  @override
  String? get originCountry;
  @override
  @JsonKey(ignore: true)
  _$$ProductionCompanyDataImplCopyWith<_$ProductionCompanyDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
