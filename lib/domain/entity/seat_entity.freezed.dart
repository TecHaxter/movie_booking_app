// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'seat_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SeatEntity _$SeatEntityFromJson(Map<String, dynamic> json) {
  return _SeatEntity.fromJson(json);
}

/// @nodoc
mixin _$SeatEntity {
  int? get number => throw _privateConstructorUsedError;
  String? get row => throw _privateConstructorUsedError;
  SeatAvailabiltyEnum? get status => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SeatEntityCopyWith<SeatEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeatEntityCopyWith<$Res> {
  factory $SeatEntityCopyWith(
          SeatEntity value, $Res Function(SeatEntity) then) =
      _$SeatEntityCopyWithImpl<$Res, SeatEntity>;
  @useResult
  $Res call(
      {int? number, String? row, SeatAvailabiltyEnum? status, double? price});
}

/// @nodoc
class _$SeatEntityCopyWithImpl<$Res, $Val extends SeatEntity>
    implements $SeatEntityCopyWith<$Res> {
  _$SeatEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = freezed,
    Object? row = freezed,
    Object? status = freezed,
    Object? price = freezed,
  }) {
    return _then(_value.copyWith(
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
      row: freezed == row
          ? _value.row
          : row // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SeatAvailabiltyEnum?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SeatEntityImplCopyWith<$Res>
    implements $SeatEntityCopyWith<$Res> {
  factory _$$SeatEntityImplCopyWith(
          _$SeatEntityImpl value, $Res Function(_$SeatEntityImpl) then) =
      __$$SeatEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? number, String? row, SeatAvailabiltyEnum? status, double? price});
}

/// @nodoc
class __$$SeatEntityImplCopyWithImpl<$Res>
    extends _$SeatEntityCopyWithImpl<$Res, _$SeatEntityImpl>
    implements _$$SeatEntityImplCopyWith<$Res> {
  __$$SeatEntityImplCopyWithImpl(
      _$SeatEntityImpl _value, $Res Function(_$SeatEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = freezed,
    Object? row = freezed,
    Object? status = freezed,
    Object? price = freezed,
  }) {
    return _then(_$SeatEntityImpl(
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
      row: freezed == row
          ? _value.row
          : row // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SeatAvailabiltyEnum?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SeatEntityImpl implements _SeatEntity {
  const _$SeatEntityImpl(
      {this.number, this.row, this.status, this.price = 480});

  factory _$SeatEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$SeatEntityImplFromJson(json);

  @override
  final int? number;
  @override
  final String? row;
  @override
  final SeatAvailabiltyEnum? status;
  @override
  @JsonKey()
  final double? price;

  @override
  String toString() {
    return 'SeatEntity(number: $number, row: $row, status: $status, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SeatEntityImpl &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.row, row) || other.row == row) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, number, row, status, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SeatEntityImplCopyWith<_$SeatEntityImpl> get copyWith =>
      __$$SeatEntityImplCopyWithImpl<_$SeatEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SeatEntityImplToJson(
      this,
    );
  }
}

abstract class _SeatEntity implements SeatEntity {
  const factory _SeatEntity(
      {final int? number,
      final String? row,
      final SeatAvailabiltyEnum? status,
      final double? price}) = _$SeatEntityImpl;

  factory _SeatEntity.fromJson(Map<String, dynamic> json) =
      _$SeatEntityImpl.fromJson;

  @override
  int? get number;
  @override
  String? get row;
  @override
  SeatAvailabiltyEnum? get status;
  @override
  double? get price;
  @override
  @JsonKey(ignore: true)
  _$$SeatEntityImplCopyWith<_$SeatEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
