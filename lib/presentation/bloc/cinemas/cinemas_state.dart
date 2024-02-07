import 'package:movie_booking_app/domain/entity/cinema_entity.dart';

sealed class CinemasState {
  const CinemasState();
}

class CinemasLoading extends CinemasState {
  final String? message;
  CinemasLoading(this.message);
}

class CinemasEmpty extends CinemasState {
  final String message;
  CinemasEmpty(this.message);
}

class CinemasFailed extends CinemasState {
  final String message;
  CinemasFailed(this.message);
}

class CinemasLoaded extends CinemasState {
  final List<CinemaEntity> cinemas;
  CinemasLoaded(
    this.cinemas,
  );
}
