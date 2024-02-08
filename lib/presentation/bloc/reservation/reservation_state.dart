import 'package:movie_booking_app/domain/entity/ticket_entity.dart';

sealed class ReservationState {
  const ReservationState();
}

class ReservationInitiated extends ReservationState {
  ReservationInitiated();
}

class ReservationProcessing extends ReservationState {
  ReservationProcessing();
}

class ReservationFailed extends ReservationState {
  final String message;
  ReservationFailed(this.message);
}

class ReservationSuccessful extends ReservationState {
  final TicketEntity ticket;
  ReservationSuccessful(this.ticket);
}
