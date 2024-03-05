import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_booking_app/core/util/mapper/events_extension.dart';
import 'package:movie_booking_app/domain/entity/movie_entity.dart';
import 'package:movie_booking_app/domain/usecase/fetch_upcoming_movies_usecase.dart';
import 'package:movie_booking_app/presentation/bloc/upcoming_movies/upcoming_movies_event.dart';
import 'package:movie_booking_app/presentation/bloc/upcoming_movies/upcoming_movies_state.dart';

class UpcomingMoviesBloc
    extends Bloc<UpcomingMoviesEvent, UpcomingMoviesState> {
  final FetchUpcomingMoviesUsecase fetchUpcomingMoviesUsecase;

  UpcomingMoviesBloc(this.fetchUpcomingMoviesUsecase)
      : super(UpcomingMoviesEmpty('No upcoming movies found')) {
    on<OnFetchUpcomingMovies>(
      (event, emit) async {
        List<MovieEntity>? movies;
        int page = 1;
        if (state is UpcomingMoviesLoaded) {
          movies = (state as UpcomingMoviesLoaded).movies;
          page = (state as UpcomingMoviesLoaded).page + 1;
        }
        emit(UpcomingMoviesLoading(
          'Wait while we fetch more movies for you',
        ));
        final res = await fetchUpcomingMoviesUsecase.call(page);
        final data = res.fold((l) => null, (r) => r);
        UpcomingMoviesState? errorState;
        if (res.isLeft()) {
          errorState = UpcomingMoviesFailed(
            'Error occurred while fetching movies',
          );
        } else if (data?.isEmpty ?? true) {
          errorState = UpcomingMoviesEmpty(
            'Error occurred while fetching movies',
          );
        }
        if (errorState != null) {
          emit(errorState);
          await Future.delayed(const Duration(seconds: 2));
        }
        movies ??= [];
        movies.addAll(data ?? []);
        if (movies.isNotEmpty) {
          emit(UpcomingMoviesLoaded(
            movies,
            page,
          ));
        }
      },
      transformer: debounceTransformer(const Duration(milliseconds: 300)),
    );
    on<OnMovieDetailsFetched>(
      (event, emit) {
        List<MovieEntity>? movies;
        UpcomingMoviesLoaded? loadedState = state is UpcomingMoviesLoaded
            ? state as UpcomingMoviesLoaded
            : null;
        movies = loadedState?.movies;
        final matchIndex =
            movies?.indexWhere((e) => e.id == event.movie.id) ?? -1;
        if (matchIndex < 0) {
          return;
        }
        movies?[matchIndex] = event.movie;
        if (loadedState != null) {
          emit(UpcomingMoviesLoaded(
            movies ?? loadedState.movies,
            loadedState.page,
          ));
        }
      },
      transformer: debounceTransformer(const Duration(milliseconds: 300)),
    );
  }
}
