import 'package:movie_booking_app/domain/entity/cinema_entity.dart';
import 'package:movie_booking_app/domain/entity/show_time_entity.dart';

sealed class ReservationEvent {}

final class OnSelectDate extends ReservationEvent {
  final DateTime date;
  OnSelectDate(this.date);
}

final class OnSelectCinema extends ReservationEvent {
  final CinemaEntity cinema;
  OnSelectCinema(this.cinema);
}

final class OnSelectShowTime extends ReservationEvent {
  final ShowTimeEntity showTime;
  OnSelectShowTime(this.showTime);
}

final class OnTapSeat extends ReservationEvent {
  final int seatIndex;
  OnTapSeat(this.seatIndex);
}

final class OnResetReservationEvent extends ReservationEvent {
  OnResetReservationEvent();
}
