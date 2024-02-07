import 'package:movie_booking_app/domain/entity/movie_entity.dart';

sealed class CinemasEvent {}

final class OnFetchAvailableCinemas extends CinemasEvent {
  final MovieEntity movie;
  final DateTime day;
  OnFetchAvailableCinemas(
    this.movie, {
    required this.day,
  });
}
