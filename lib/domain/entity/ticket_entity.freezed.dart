// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticket_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TicketEntity _$TicketEntityFromJson(Map<String, dynamic> json) {
  return _TicketEntity.fromJson(json);
}

/// @nodoc
mixin _$TicketEntity {
  int? get id => throw _privateConstructorUsedError;
  List<SeatEntity>? get seats => throw _privateConstructorUsedError;
  CinemaEntity? get cinema => throw _privateConstructorUsedError;
  ShowTimeEntity? get showTime => throw _privateConstructorUsedError;
  DateTime? get bookedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TicketEntityCopyWith<TicketEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketEntityCopyWith<$Res> {
  factory $TicketEntityCopyWith(
          TicketEntity value, $Res Function(TicketEntity) then) =
      _$TicketEntityCopyWithImpl<$Res, TicketEntity>;
  @useResult
  $Res call(
      {int? id,
      List<SeatEntity>? seats,
      CinemaEntity? cinema,
      ShowTimeEntity? showTime,
      DateTime? bookedAt});

  $CinemaEntityCopyWith<$Res>? get cinema;
  $ShowTimeEntityCopyWith<$Res>? get showTime;
}

/// @nodoc
class _$TicketEntityCopyWithImpl<$Res, $Val extends TicketEntity>
    implements $TicketEntityCopyWith<$Res> {
  _$TicketEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? seats = freezed,
    Object? cinema = freezed,
    Object? showTime = freezed,
    Object? bookedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      seats: freezed == seats
          ? _value.seats
          : seats // ignore: cast_nullable_to_non_nullable
              as List<SeatEntity>?,
      cinema: freezed == cinema
          ? _value.cinema
          : cinema // ignore: cast_nullable_to_non_nullable
              as CinemaEntity?,
      showTime: freezed == showTime
          ? _value.showTime
          : showTime // ignore: cast_nullable_to_non_nullable
              as ShowTimeEntity?,
      bookedAt: freezed == bookedAt
          ? _value.bookedAt
          : bookedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CinemaEntityCopyWith<$Res>? get cinema {
    if (_value.cinema == null) {
      return null;
    }

    return $CinemaEntityCopyWith<$Res>(_value.cinema!, (value) {
      return _then(_value.copyWith(cinema: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ShowTimeEntityCopyWith<$Res>? get showTime {
    if (_value.showTime == null) {
      return null;
    }

    return $ShowTimeEntityCopyWith<$Res>(_value.showTime!, (value) {
      return _then(_value.copyWith(showTime: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TicketEntityImplCopyWith<$Res>
    implements $TicketEntityCopyWith<$Res> {
  factory _$$TicketEntityImplCopyWith(
          _$TicketEntityImpl value, $Res Function(_$TicketEntityImpl) then) =
      __$$TicketEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      List<SeatEntity>? seats,
      CinemaEntity? cinema,
      ShowTimeEntity? showTime,
      DateTime? bookedAt});

  @override
  $CinemaEntityCopyWith<$Res>? get cinema;
  @override
  $ShowTimeEntityCopyWith<$Res>? get showTime;
}

/// @nodoc
class __$$TicketEntityImplCopyWithImpl<$Res>
    extends _$TicketEntityCopyWithImpl<$Res, _$TicketEntityImpl>
    implements _$$TicketEntityImplCopyWith<$Res> {
  __$$TicketEntityImplCopyWithImpl(
      _$TicketEntityImpl _value, $Res Function(_$TicketEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? seats = freezed,
    Object? cinema = freezed,
    Object? showTime = freezed,
    Object? bookedAt = freezed,
  }) {
    return _then(_$TicketEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      seats: freezed == seats
          ? _value._seats
          : seats // ignore: cast_nullable_to_non_nullable
              as List<SeatEntity>?,
      cinema: freezed == cinema
          ? _value.cinema
          : cinema // ignore: cast_nullable_to_non_nullable
              as CinemaEntity?,
      showTime: freezed == showTime
          ? _value.showTime
          : showTime // ignore: cast_nullable_to_non_nullable
              as ShowTimeEntity?,
      bookedAt: freezed == bookedAt
          ? _value.bookedAt
          : bookedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TicketEntityImpl implements _TicketEntity {
  const _$TicketEntityImpl(
      {this.id,
      final List<SeatEntity>? seats,
      this.cinema,
      this.showTime,
      this.bookedAt})
      : _seats = seats;

  factory _$TicketEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$TicketEntityImplFromJson(json);

  @override
  final int? id;
  final List<SeatEntity>? _seats;
  @override
  List<SeatEntity>? get seats {
    final value = _seats;
    if (value == null) return null;
    if (_seats is EqualUnmodifiableListView) return _seats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final CinemaEntity? cinema;
  @override
  final ShowTimeEntity? showTime;
  @override
  final DateTime? bookedAt;

  @override
  String toString() {
    return 'TicketEntity(id: $id, seats: $seats, cinema: $cinema, showTime: $showTime, bookedAt: $bookedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._seats, _seats) &&
            (identical(other.cinema, cinema) || other.cinema == cinema) &&
            (identical(other.showTime, showTime) ||
                other.showTime == showTime) &&
            (identical(other.bookedAt, bookedAt) ||
                other.bookedAt == bookedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id,
      const DeepCollectionEquality().hash(_seats), cinema, showTime, bookedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketEntityImplCopyWith<_$TicketEntityImpl> get copyWith =>
      __$$TicketEntityImplCopyWithImpl<_$TicketEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TicketEntityImplToJson(
      this,
    );
  }
}

abstract class _TicketEntity implements TicketEntity {
  const factory _TicketEntity(
      {final int? id,
      final List<SeatEntity>? seats,
      final CinemaEntity? cinema,
      final ShowTimeEntity? showTime,
      final DateTime? bookedAt}) = _$TicketEntityImpl;

  factory _TicketEntity.fromJson(Map<String, dynamic> json) =
      _$TicketEntityImpl.fromJson;

  @override
  int? get id;
  @override
  List<SeatEntity>? get seats;
  @override
  CinemaEntity? get cinema;
  @override
  ShowTimeEntity? get showTime;
  @override
  DateTime? get bookedAt;
  @override
  @JsonKey(ignore: true)
  _$$TicketEntityImplCopyWith<_$TicketEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
