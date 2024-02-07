import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_booking_app/domain/entity/cinema_entity.dart';
import 'package:movie_booking_app/domain/entity/seat_entity.dart';
import 'package:movie_booking_app/domain/entity/show_time_entity.dart';
part 'reservation_state.freezed.dart';

@freezed
class ReservationState with _$ReservationState {
  const factory ReservationState({
    DateTime? date,
    CinemaEntity? cinema,
    ShowTimeEntity? showTime,
    List<SeatEntity>? seats,
  }) = _ReservationState;
}
