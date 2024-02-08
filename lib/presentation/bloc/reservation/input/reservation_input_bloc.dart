import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_booking_app/domain/entity/seat_entity.dart';
import 'package:movie_booking_app/presentation/bloc/reservation/input/reservation_event.dart';
import 'package:movie_booking_app/presentation/bloc/reservation/input/reservation_input_state.dart';

class ReservationInputBloc
    extends Bloc<ReservationInputEvent, ReservationInputState> {
  ReservationInputBloc() : super(ReservationInputState(date: DateTime.now())) {
    on<OnSelectDate>((event, emit) async {
      emit(state.copyWith(date: event.date));
    });
    on<OnSelectCinema>((event, emit) {
      emit(state.copyWith(cinema: event.cinema));
    });
    on<OnSelectShowTime>((event, emit) {
      emit(state.copyWith(
        showTime: event.showTime,
      ));
    });
    on<OnTapSeat>((event, emit) {
      List<SeatEntity>? seats = state.showTime?.seats?.toList() ?? [];
      final selectedSeats = state.selectedSeats?.toList() ?? [];
      SeatEntity? seat = seats[event.seatIndex];
      seat = seat.copyWith(
        status: seat.status == SeatAvailabiltyEnum.selected
            ? SeatAvailabiltyEnum.available
            : SeatAvailabiltyEnum.selected,
      );
      seats[event.seatIndex] = seat;
      selectedSeats.add(seat);

      emit(state.copyWith(
        showTime: state.showTime?.copyWith(
          seats: seats,
        ),
        selectedSeats: selectedSeats,
      ));
    });
    on<OnResetReservationInputEvent>((event, emit) {
      emit(ReservationInputState(date: DateTime.now()));
    });
  }
}
