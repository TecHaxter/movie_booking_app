import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_booking_app/domain/usecase/fetch_my_bookings_usecase.dart';
import 'package:movie_booking_app/presentation/bloc/bookings/bookings_event.dart';
import 'package:movie_booking_app/presentation/bloc/bookings/bookings_state.dart';

class BookingsBloc extends Bloc<BookingsEvent, BookingsState> {
  final FetchMyBookingsUsecase fetchMyBookingsUsecase;

  BookingsBloc(this.fetchMyBookingsUsecase)
      : super(BookingsEmpty(
          'Wait while we fetch more Bookings for the movies',
        )) {
    on<OnFetchBookings>((event, emit) async {
      emit(BookingsLoading(
        'Wait while we fetch your Bookings',
      ));
      final res = await fetchMyBookingsUsecase.call();
      final data = res.fold((l) => null, (r) => r);
      BookingsState? errorState;
      if (res.isLeft() || data == null) {
        errorState = BookingsFailed(
          'Error occurred while fetching Bookings',
        );
      }
      if (errorState != null) {
        emit(errorState);
        await Future.delayed(const Duration(seconds: 2));
      }
      emit(BookingsLoaded(data!));
    });
  }
}
