// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reservation_input_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ReservationInputState {
  DateTime? get date => throw _privateConstructorUsedError;
  CinemaEntity? get cinema => throw _privateConstructorUsedError;
  ShowTimeEntity? get showTime => throw _privateConstructorUsedError;
  List<SeatEntity>? get selectedSeats => throw _privateConstructorUsedError;
  String? get inputError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReservationInputStateCopyWith<ReservationInputState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReservationInputStateCopyWith<$Res> {
  factory $ReservationInputStateCopyWith(ReservationInputState value,
          $Res Function(ReservationInputState) then) =
      _$ReservationInputStateCopyWithImpl<$Res, ReservationInputState>;
  @useResult
  $Res call(
      {DateTime? date,
      CinemaEntity? cinema,
      ShowTimeEntity? showTime,
      List<SeatEntity>? selectedSeats,
      String? inputError});

  $CinemaEntityCopyWith<$Res>? get cinema;
  $ShowTimeEntityCopyWith<$Res>? get showTime;
}

/// @nodoc
class _$ReservationInputStateCopyWithImpl<$Res,
        $Val extends ReservationInputState>
    implements $ReservationInputStateCopyWith<$Res> {
  _$ReservationInputStateCopyWithImpl(this._value, this._then);

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
    Object? selectedSeats = freezed,
    Object? inputError = freezed,
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
      selectedSeats: freezed == selectedSeats
          ? _value.selectedSeats
          : selectedSeats // ignore: cast_nullable_to_non_nullable
              as List<SeatEntity>?,
      inputError: freezed == inputError
          ? _value.inputError
          : inputError // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$ReservationInputStateImplCopyWith<$Res>
    implements $ReservationInputStateCopyWith<$Res> {
  factory _$$ReservationInputStateImplCopyWith(
          _$ReservationInputStateImpl value,
          $Res Function(_$ReservationInputStateImpl) then) =
      __$$ReservationInputStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime? date,
      CinemaEntity? cinema,
      ShowTimeEntity? showTime,
      List<SeatEntity>? selectedSeats,
      String? inputError});

  @override
  $CinemaEntityCopyWith<$Res>? get cinema;
  @override
  $ShowTimeEntityCopyWith<$Res>? get showTime;
}

/// @nodoc
class __$$ReservationInputStateImplCopyWithImpl<$Res>
    extends _$ReservationInputStateCopyWithImpl<$Res,
        _$ReservationInputStateImpl>
    implements _$$ReservationInputStateImplCopyWith<$Res> {
  __$$ReservationInputStateImplCopyWithImpl(_$ReservationInputStateImpl _value,
      $Res Function(_$ReservationInputStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? cinema = freezed,
    Object? showTime = freezed,
    Object? selectedSeats = freezed,
    Object? inputError = freezed,
  }) {
    return _then(_$ReservationInputStateImpl(
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
      selectedSeats: freezed == selectedSeats
          ? _value._selectedSeats
          : selectedSeats // ignore: cast_nullable_to_non_nullable
              as List<SeatEntity>?,
      inputError: freezed == inputError
          ? _value.inputError
          : inputError // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ReservationInputStateImpl implements _ReservationInputState {
  const _$ReservationInputStateImpl(
      {this.date,
      this.cinema,
      this.showTime,
      final List<SeatEntity>? selectedSeats,
      this.inputError})
      : _selectedSeats = selectedSeats;

  @override
  final DateTime? date;
  @override
  final CinemaEntity? cinema;
  @override
  final ShowTimeEntity? showTime;
  final List<SeatEntity>? _selectedSeats;
  @override
  List<SeatEntity>? get selectedSeats {
    final value = _selectedSeats;
    if (value == null) return null;
    if (_selectedSeats is EqualUnmodifiableListView) return _selectedSeats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? inputError;

  @override
  String toString() {
    return 'ReservationInputState(date: $date, cinema: $cinema, showTime: $showTime, selectedSeats: $selectedSeats, inputError: $inputError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReservationInputStateImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.cinema, cinema) || other.cinema == cinema) &&
            (identical(other.showTime, showTime) ||
                other.showTime == showTime) &&
            const DeepCollectionEquality()
                .equals(other._selectedSeats, _selectedSeats) &&
            (identical(other.inputError, inputError) ||
                other.inputError == inputError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date, cinema, showTime,
      const DeepCollectionEquality().hash(_selectedSeats), inputError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReservationInputStateImplCopyWith<_$ReservationInputStateImpl>
      get copyWith => __$$ReservationInputStateImplCopyWithImpl<
          _$ReservationInputStateImpl>(this, _$identity);
}

abstract class _ReservationInputState implements ReservationInputState {
  const factory _ReservationInputState(
      {final DateTime? date,
      final CinemaEntity? cinema,
      final ShowTimeEntity? showTime,
      final List<SeatEntity>? selectedSeats,
      final String? inputError}) = _$ReservationInputStateImpl;

  @override
  DateTime? get date;
  @override
  CinemaEntity? get cinema;
  @override
  ShowTimeEntity? get showTime;
  @override
  List<SeatEntity>? get selectedSeats;
  @override
  String? get inputError;
  @override
  @JsonKey(ignore: true)
  _$$ReservationInputStateImplCopyWith<_$ReservationInputStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
