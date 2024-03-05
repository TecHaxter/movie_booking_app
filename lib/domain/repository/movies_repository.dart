import 'package:movie_booking_app/core/util/http/responser.dart';
import 'package:movie_booking_app/domain/entity/movie_entity.dart';

abstract class MoviesRepository {
  Future<Responser<List<MovieEntity>?>> fetchUpcomingMovies({
    int page = 1,
  });

  Future<Responser<MovieEntity?>> fetchMovieDetails({required int id});

  Future<Responser<List<String>?>> fetchMovieImages({required int id});

  Future<Responser<String?>> fetchMovieYoutubeTrailerId({required int id});
}
