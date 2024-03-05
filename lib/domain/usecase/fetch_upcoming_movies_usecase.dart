import 'package:movie_booking_app/core/util/http/responser.dart';
import 'package:movie_booking_app/domain/entity/movie_entity.dart';
import 'package:movie_booking_app/domain/repository/movies_repository.dart';

sealed class FetchUpcomingMoviesUsecase {
  Future<Responser<List<MovieEntity>?>> call(int page);
}

class FetchUpcomingMoviesUsecaseImpl implements FetchUpcomingMoviesUsecase {
  final MoviesRepository moviesRepository;
  const FetchUpcomingMoviesUsecaseImpl(this.moviesRepository);
  @override
  Future<Responser<List<MovieEntity>?>> call(int page) {
    return moviesRepository.fetchUpcomingMovies(page: page);
  }
}
