import 'package:movie_booking_app/domain/entity/cinema_entity.dart';
import 'package:movie_booking_app/domain/entity/show_time_entity.dart';

sealed class ReservationInputEvent {}

final class OnSelectDate extends ReservationInputEvent {
  final DateTime date;
  OnSelectDate(this.date);
}

final class OnSelectCinema extends ReservationInputEvent {
  final CinemaEntity cinema;
  OnSelectCinema(this.cinema);
}

final class OnSelectShowTime extends ReservationInputEvent {
  final ShowTimeEntity showTime;
  OnSelectShowTime(this.showTime);
}

final class OnTapSeat extends ReservationInputEvent {
  final int seatIndex;
  OnTapSeat(this.seatIndex);
}

final class OnResetReservationInputEvent extends ReservationInputEvent {
  OnResetReservationInputEvent();
}
