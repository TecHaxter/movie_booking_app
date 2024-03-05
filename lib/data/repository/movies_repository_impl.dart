import 'package:movie_booking_app/core/util/http/responser.dart';
import 'package:movie_booking_app/data/source/movies_data_source.dart';
import 'package:movie_booking_app/domain/entity/movie_entity.dart';
import 'package:movie_booking_app/domain/repository/movies_repository.dart';

class MoviesRepositoryImpl implements MoviesRepository {
  final MoviesDataSource moviesDataSource;
  const MoviesRepositoryImpl(this.moviesDataSource);

  @override
  Future<Responser<List<MovieEntity>?>> fetchUpcomingMovies(
      {int page = 1}) async {
    try {
      final res = await moviesDataSource.fetchUpcomingMovies(
        page: page,
      );
      if (res.isLeft()) {
        throw 'Error occurred from fetchUpcomingMovies data source';
      }
      final data = res.fold((l) => null, (r) => r);
      final movies = data?.results
          ?.map(
            (e) => e.toEntity(null),
          )
          .toList();
      return success(movies);
    } catch (e) {
      return failed(e.toString());
    }
  }

  @override
  Future<Responser<MovieEntity?>> fetchMovieDetails({required int id}) async {
    try {
      final res = await moviesDataSource.fetchMovieDetails(
        id: id,
      );
      if (res.isLeft()) {
        throw 'Error occurred from fetchMovieDetails data source';
      }
      final data = res.fold((l) => null, (r) => r);
      MovieEntity? movie = data?.toEntity(null);
      return success(movie);
    } catch (e) {
      return failed(e.toString());
    }
  }

  @override
  Future<Responser<List<String>?>> fetchMovieImages({required int id}) async {
    try {
      final res = await moviesDataSource.fetchImagesOfMovie(
        id: id,
      );
      if (res.isLeft()) {
        throw 'Error occurred from fetchImagesOfMovie data source';
      }
      final backdrops = res.fold((l) => null, (r) => r)?.backdrops?.toList();
      if (backdrops?.isEmpty ?? true) {
        throw 'Images not found for the movie $id';
      }
      backdrops
          ?.sort((e, f) => ((f.voteCount ?? 0) > (e.voteCount ?? -1)) ? 1 : 0);

      final images = backdrops
          ?.sublist(
            0,
            (backdrops.length) > 5 ? 5 : backdrops.length,
          )
          .map(
            (e) => 'https://image.tmdb.org/t/p/w500${e.filePath}',
          )
          .toList();
      return success(images);
    } catch (e) {
      return failed(e.toString());
    }
  }

  @override
  Future<Responser<String?>> fetchMovieYoutubeTrailerId(
      {required int id}) async {
    try {
      final res = await moviesDataSource.fetchVideoOfMovie(
        id: id,
      );
      if (res.isLeft()) {
        throw 'Error occurred from fetchVideoOfMovie data source';
      }
      final data = res
          .fold((l) => null, (r) => r)
          ?.results
          ?.where(
            (e) =>
                e.site == 'YouTube' &&
                (e.type == 'Trailer' || e.type == 'Teaser'),
          )
          .toList();
      if (data?.isEmpty ?? true) {
        throw '';
      }
      return success(data?[0].key);
    } catch (e) {
      return failed(e.toString());
    }
  }
}
