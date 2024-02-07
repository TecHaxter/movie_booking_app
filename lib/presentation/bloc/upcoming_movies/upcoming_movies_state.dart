import 'package:movie_booking_app/domain/entity/movie_entity.dart';

abstract class UpcomingMoviesState {
  const UpcomingMoviesState();
}

class UpcomingMoviesLoading extends UpcomingMoviesState {
  final String? message;
  UpcomingMoviesLoading(this.message);
}

class UpcomingMoviesEmpty extends UpcomingMoviesState {
  final String? message;
  UpcomingMoviesEmpty(this.message);
}

class UpcomingMoviesFailed extends UpcomingMoviesState {
  final String message;
  UpcomingMoviesFailed(this.message);
}

class UpcomingMoviesLoaded extends UpcomingMoviesState {
  final List<MovieEntity> movies;
  final int page;
  UpcomingMoviesLoaded(
    this.movies,
    this.page,
  );
}
