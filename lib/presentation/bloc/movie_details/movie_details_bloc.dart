import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_booking_app/domain/usecase/fetch_movie_details_usecase.dart';
import 'package:movie_booking_app/presentation/bloc/movie_details/movie_details_event.dart';
import 'package:movie_booking_app/presentation/bloc/movie_details/movie_details_state.dart';

class MovieDetailsBloc extends Bloc<MovieDetailsEvent, MovieDetailsState> {
  final FetchMovieDetailsUsecase fetchMovieDetailsUsecase;

  MovieDetailsBloc(this.fetchMovieDetailsUsecase)
      : super(MovieDetailsLoading('Wait while we fetch more movies for you')) {
    on<OnFetchMovieDetails>((event, emit) async {
      emit(MovieDetailsLoading(
        'Wait while we fetch more movies for you',
      ));
      final res = await fetchMovieDetailsUsecase.call(id: event.id);
      final data = res.fold((l) => null, (r) => r);
      MovieDetailsState? errorState;
      if (res.isLeft() || data == null) {
        errorState = MovieDetailsFailed(
          'Error occurred while fetching movies',
        );
      }
      if (errorState != null) {
        emit(errorState);
        await Future.delayed(const Duration(seconds: 2));
      }
      emit(MovieDetailsLoaded(data!));
    });
    on<OnRevisitMovieDetails>((event, emit) {
      emit(MovieDetailsLoaded(event.movie));
    });
  }
}
