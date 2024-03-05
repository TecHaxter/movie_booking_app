import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_booking_app/domain/usecase/fetch_my_bookings_usecase.dart';
import 'package:movie_booking_app/presentation/bloc/bookings/bookings_event.dart';
import 'package:movie_booking_app/presentation/bloc/bookings/bookings_state.dart';

class BookingsBloc extends Bloc<BookingsEvent, BookingsState> {
  final FetchMyBookingsUsecase fetchMyBookingsUsecase;

  BookingsBloc(this.fetchMyBookingsUsecase)
      : super(BookingsEmpty('No Bookings Found')) {
    on<OnFetchBookings>((event, emit) async {
      emit(BookingsLoading(
        'Wait while we fetch your Bookings',
      ));
      final res = await fetchMyBookingsUsecase.call();
      final data = res.fold((l) => null, (r) => r);
      if (res.isLeft()) {
        emit(BookingsFailed(
          'Error occurred while fetching Bookings',
        ));
        return;
      }
      if (data == null) {
        emit(BookingsEmpty(
          'No Bookings Found',
        ));
        return;
      }
      emit(BookingsLoaded(data));
    });
  }
}
