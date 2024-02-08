import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_booking_app/core/service/router/app_router.dart';
import 'package:movie_booking_app/core/service/service.dart';
import 'package:movie_booking_app/domain/usecase/book_my_show_usecase.dart';
import 'package:movie_booking_app/presentation/bloc/reservation/input/reservation_input_state.dart';
import 'package:movie_booking_app/presentation/bloc/reservation/reservation_event.dart';
import 'package:movie_booking_app/presentation/bloc/reservation/reservation_state.dart';

class ReservationBloc extends Bloc<ReservationEvent, ReservationState> {
  final BookMyShowUsecase bookMyShowUsecase;
  ReservationBloc(this.bookMyShowUsecase) : super(ReservationInitiated()) {
    on<OnChooseSeatRouteNavigationRequest>((event, emit) {
      final error = checkDateCinemaShowTime(event.input);
      if (error?.isNotEmpty ?? false) {
        emit(ReservationFailed(error!));
        return;
      }
      AppServices.router.push(const ChooseSeatRoute());
    });

    on<OnBookMyShow>((event, emit) async {
      final error = checkDateCinemaShowTime(event.input);
      if (error?.isNotEmpty ?? false) {
        emit(ReservationFailed(error!));
        return;
      }
      emit(ReservationProcessing());
      final res = await bookMyShowUsecase.call(
        cinema: event.input.cinema!,
        showTime: event.input.showTime!,
        seats: event.input.selectedSeats!,
      );
      final data = res.fold((l) => null, (r) => r);
      if (res.isLeft() || data == null) {
        emit(ReservationFailed('Server error!!'));
        return;
      }
      emit(ReservationSuccessful(data));
    });
  }

  String? checkDateCinemaShowTime(ReservationInputState input) {
    if (input.date == null) {
      return 'Select a date to continue';
    }
    if (input.cinema == null) {
      return 'Select a cinema to continue';
    }
    if (input.showTime == null) {
      return 'Select a show-time to continue';
    }
    if (input.selectedSeats?.isEmpty ?? false) {
      return 'Select atleast one seat to book';
    }
    return null;
  }
}
