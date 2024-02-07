import 'package:movie_booking_app/core/util/http/responser.dart';
import 'package:movie_booking_app/domain/entity/movie_entity.dart';
import 'package:movie_booking_app/domain/entity/cinema_entity.dart';
import 'package:movie_booking_app/domain/repository/cinema_repository.dart';

sealed class FetchCinemasByMovieUsecase {
  Future<Responser<List<CinemaEntity>?>> call(
    MovieEntity movie, {
    required DateTime day,
  });
}

class FetchCinemasByMovieUsecaseImpl implements FetchCinemasByMovieUsecase {
  final CinemaRepository cinemaRepository;
  const FetchCinemasByMovieUsecaseImpl(this.cinemaRepository);
  @override
  Future<Responser<List<CinemaEntity>?>> call(
    MovieEntity movie, {
    required DateTime day,
  }) {
    return cinemaRepository.fetchCinemasByMovie(
      movie,
      day: day,
    );
  }
}
