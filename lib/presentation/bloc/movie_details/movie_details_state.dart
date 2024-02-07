import 'package:movie_booking_app/domain/entity/movie_entity.dart';

sealed class MovieDetailsState {
  const MovieDetailsState();
}

class MovieDetailsLoading extends MovieDetailsState {
  final String? message;
  MovieDetailsLoading(this.message);
}

class MovieDetailsEmpty extends MovieDetailsState {
  final String message;
  MovieDetailsEmpty(this.message);
}

class MovieDetailsFailed extends MovieDetailsState {
  final String message;
  MovieDetailsFailed(this.message);
}

class MovieDetailsLoaded extends MovieDetailsState {
  final MovieEntity movie;
  MovieDetailsLoaded(
    this.movie,
  );
}
