import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_booking_app/domain/usecase/fetch_cinemas_by_movie_usecase.dart';
import 'package:movie_booking_app/presentation/bloc/cinemas/cinemas_event.dart';
import 'package:movie_booking_app/presentation/bloc/cinemas/cinemas_state.dart';

class CinemasBloc extends Bloc<CinemasEvent, CinemasState> {
  final FetchCinemasByMovieUsecase fetchCinemasByMovieUsecase;

  CinemasBloc(this.fetchCinemasByMovieUsecase)
      : super(CinemasEmpty(
          'Wait while we fetch more cinemas for the movies',
        )) {
    on<OnFetchAvailableCinemas>((event, emit) async {
      emit(CinemasLoading(
        'Wait while we fetch more movies for you',
      ));
      final res = await fetchCinemasByMovieUsecase.call(
        event.movie,
        day: event.day,
      );
      final data = res.fold((l) => null, (r) => r);
      CinemasState? errorState;
      if (res.isLeft() || data == null) {
        errorState = CinemasFailed(
          'Error occurred while fetching cinemas',
        );
      }
      if (errorState != null) {
        emit(errorState);
        await Future.delayed(const Duration(seconds: 2));
      }
      emit(CinemasLoaded(data!));
    });
  }
}
