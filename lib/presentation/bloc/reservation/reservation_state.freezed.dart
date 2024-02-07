// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reservation_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ReservationState {
  DateTime? get date => throw _privateConstructorUsedError;
  CinemaEntity? get cinema => throw _privateConstructorUsedError;
  ShowTimeEntity? get showTime => throw _privateConstructorUsedError;
  List<SeatEntity>? get seats => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReservationStateCopyWith<ReservationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReservationStateCopyWith<$Res> {
  factory $ReservationStateCopyWith(
          ReservationState value, $Res Function(ReservationState) then) =
      _$ReservationStateCopyWithImpl<$Res, ReservationState>;
  @useResult
  $Res call(
      {DateTime? date,
      CinemaEntity? cinema,
      ShowTimeEntity? showTime,
      List<SeatEntity>? seats});

  $CinemaEntityCopyWith<$Res>? get cinema;
  $ShowTimeEntityCopyWith<$Res>? get showTime;
}

/// @nodoc
class _$ReservationStateCopyWithImpl<$Res, $Val extends ReservationState>
    implements $ReservationStateCopyWith<$Res> {
  _$ReservationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? cinema = freezed,
    Object? showTime = freezed,
    Object? seats = freezed,
  }) {
    return _then(_value.copyWith(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      cinema: freezed == cinema
          ? _value.cinema
          : cinema // ignore: cast_nullable_to_non_nullable
              as CinemaEntity?,
      showTime: freezed == showTime
          ? _value.showTime
          : showTime // ignore: cast_nullable_to_non_nullable
              as ShowTimeEntity?,
      seats: freezed == seats
          ? _value.seats
          : seats // ignore: cast_nullable_to_non_nullable
              as List<SeatEntity>?,
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
abstract class _$$ReservationStateImplCopyWith<$Res>
    implements $ReservationStateCopyWith<$Res> {
  factory _$$ReservationStateImplCopyWith(_$ReservationStateImpl value,
          $Res Function(_$ReservationStateImpl) then) =
      __$$ReservationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime? date,
      CinemaEntity? cinema,
      ShowTimeEntity? showTime,
      List<SeatEntity>? seats});

  @override
  $CinemaEntityCopyWith<$Res>? get cinema;
  @override
  $ShowTimeEntityCopyWith<$Res>? get showTime;
}

/// @nodoc
class __$$ReservationStateImplCopyWithImpl<$Res>
    extends _$ReservationStateCopyWithImpl<$Res, _$ReservationStateImpl>
    implements _$$ReservationStateImplCopyWith<$Res> {
  __$$ReservationStateImplCopyWithImpl(_$ReservationStateImpl _value,
      $Res Function(_$ReservationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? cinema = freezed,
    Object? showTime = freezed,
    Object? seats = freezed,
  }) {
    return _then(_$ReservationStateImpl(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      cinema: freezed == cinema
          ? _value.cinema
          : cinema // ignore: cast_nullable_to_non_nullable
              as CinemaEntity?,
      showTime: freezed == showTime
          ? _value.showTime
          : showTime // ignore: cast_nullable_to_non_nullable
              as ShowTimeEntity?,
      seats: freezed == seats
          ? _value._seats
          : seats // ignore: cast_nullable_to_non_nullable
              as List<SeatEntity>?,
    ));
  }
}

/// @nodoc

class _$ReservationStateImpl implements _ReservationState {
  const _$ReservationStateImpl(
      {this.date, this.cinema, this.showTime, final List<SeatEntity>? seats})
      : _seats = seats;

  @override
  final DateTime? date;
  @override
  final CinemaEntity? cinema;
  @override
  final ShowTimeEntity? showTime;
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
  String toString() {
    return 'ReservationState(date: $date, cinema: $cinema, showTime: $showTime, seats: $seats)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReservationStateImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.cinema, cinema) || other.cinema == cinema) &&
            (identical(other.showTime, showTime) ||
                other.showTime == showTime) &&
            const DeepCollectionEquality().equals(other._seats, _seats));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date, cinema, showTime,
      const DeepCollectionEquality().hash(_seats));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReservationStateImplCopyWith<_$ReservationStateImpl> get copyWith =>
      __$$ReservationStateImplCopyWithImpl<_$ReservationStateImpl>(
          this, _$identity);
}

abstract class _ReservationState implements ReservationState {
  const factory _ReservationState(
      {final DateTime? date,
      final CinemaEntity? cinema,
      final ShowTimeEntity? showTime,
      final List<SeatEntity>? seats}) = _$ReservationStateImpl;

  @override
  DateTime? get date;
  @override
  CinemaEntity? get cinema;
  @override
  ShowTimeEntity? get showTime;
  @override
  List<SeatEntity>? get seats;
  @override
  @JsonKey(ignore: true)
  _$$ReservationStateImplCopyWith<_$ReservationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
