import 'package:movie_booking_app/presentation/bloc/reservation/input/reservation_input_state.dart';

sealed class ReservationEvent {}

final class OnBookMyShow extends ReservationEvent {
  final ReservationInputState input;
  OnBookMyShow(this.input);
}

final class OnChooseSeatRouteNavigationRequest extends ReservationEvent {
  final ReservationInputState input;
  OnChooseSeatRouteNavigationRequest(this.input);
}
