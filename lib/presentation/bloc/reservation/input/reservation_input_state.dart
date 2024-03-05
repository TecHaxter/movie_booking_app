import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_booking_app/domain/entity/cinema_entity.dart';
import 'package:movie_booking_app/domain/entity/seat_entity.dart';
import 'package:movie_booking_app/domain/entity/show_time_entity.dart';
part 'reservation_input_state.freezed.dart';

@freezed
class ReservationInputState with _$ReservationInputState {
  const factory ReservationInputState({
    DateTime? date,
    CinemaEntity? cinema,
    ShowTimeEntity? showTime,
    List<SeatEntity>? selectedSeats,
    String? inputError,
  }) = _ReservationInputState;
}
