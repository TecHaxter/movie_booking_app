import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_booking_app/domain/entity/seat_entity.dart';
import 'package:movie_booking_app/presentation/bloc/reservation/reservation_event.dart';
import 'package:movie_booking_app/presentation/bloc/reservation/reservation_state.dart';

class ReservationBloc extends Bloc<ReservationEvent, ReservationState> {
  ReservationBloc()
      : super(
          ReservationState(
            date: DateTime.now(),
          ),
        ) {
    on<OnSelectDate>((event, emit) async {
      emit(state.copyWith(date: event.date));
    });
    on<OnSelectCinema>((event, emit) {
      emit(state.copyWith(
        cinema: event.cinema,
      ));
    });
    on<OnSelectShowTime>((event, emit) {
      emit(state.copyWith(
        showTime: event.showTime,
        seats: event.showTime.seats,
      ));
    });
    on<OnTapSeat>((event, emit) {
      final seats = state.seats?.toList() ?? [];
      seats[event.seatIndex] = seats[event.seatIndex].copyWith(
        status: seats[event.seatIndex].status == SeatAvailabiltyEnum.selected
            ? SeatAvailabiltyEnum.available
            : SeatAvailabiltyEnum.selected,
      );
      emit(state.copyWith(
        seats: seats,
      ));
    });
    on<OnResetReservationEvent>((event, emit) {
      emit(ReservationState(
        date: DateTime.now(),
      ));
    });
  }
}
