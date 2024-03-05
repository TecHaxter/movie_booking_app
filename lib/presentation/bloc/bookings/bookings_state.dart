import 'package:movie_booking_app/domain/entity/ticket_entity.dart';

sealed class BookingsState {
  const BookingsState();
}

class BookingsLoading extends BookingsState {
  final String? message;
  BookingsLoading(this.message);
}

class BookingsEmpty extends BookingsState {
  final String message;
  BookingsEmpty(this.message);
}

class BookingsFailed extends BookingsState {
  final String message;
  BookingsFailed(this.message);
}

class BookingsLoaded extends BookingsState {
  final List<TicketEntity> tickets;
  BookingsLoaded(
    this.tickets,
  );
}
