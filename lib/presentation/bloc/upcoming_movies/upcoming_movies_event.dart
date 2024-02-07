import 'package:movie_booking_app/domain/entity/movie_entity.dart';

sealed class UpcomingMoviesEvent {}

final class OnFetchUpcomingMovies extends UpcomingMoviesEvent {}

final class OnMovieDetailsFetched extends UpcomingMoviesEvent {
  final MovieEntity movie;
  OnMovieDetailsFetched(this.movie);
}
