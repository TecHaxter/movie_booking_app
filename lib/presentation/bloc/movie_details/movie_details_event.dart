import 'package:movie_booking_app/domain/entity/movie_entity.dart';

sealed class MovieDetailsEvent {}

final class OnFetchMovieDetails extends MovieDetailsEvent {
  final int id;
  OnFetchMovieDetails(this.id);
}

final class OnRevisitMovieDetails extends MovieDetailsEvent {
  final MovieEntity movie;
  OnRevisitMovieDetails(this.movie);
}
