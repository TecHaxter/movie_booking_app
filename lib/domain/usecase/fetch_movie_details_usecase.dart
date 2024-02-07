import 'package:movie_booking_app/core/util/http/responser.dart';
import 'package:movie_booking_app/domain/entity/movie_entity.dart';
import 'package:movie_booking_app/domain/repository/movies_repository.dart';

sealed class FetchMovieDetailsUsecase {
  Future<Responser<MovieEntity?>> call({required int id});
}

class FetchMovieDetailsUsecaseImpl implements FetchMovieDetailsUsecase {
  final MoviesRepository moviesRepository;
  const FetchMovieDetailsUsecaseImpl(this.moviesRepository);

  @override
  Future<Responser<MovieEntity?>> call({required int id}) async {
    try {
      final res = await moviesRepository.fetchMovieDetails(id: id);
      if (res.isLeft()) {
        throw 'Error occurred from fetchMovieDetails repository';
      }
      MovieEntity? movie = res.fold((l) => null, (r) => r);
      try {
        final resImages = await moviesRepository.fetchMovieImages(id: id);
        if (resImages.isLeft()) {
          throw 'Error occurred from fetchMovieImages repository';
        }
        final images = resImages.fold((l) => null, (r) => r);
        movie = movie?.copyWith(thumbnails: images);
      } catch (e) {
        failed(e.toString());
      }
      try {
        final resTrailerId =
            await moviesRepository.fetchMovieYoutubeTrailerId(id: id);
        if (resTrailerId.isLeft()) {
          throw 'Error occurred from fetchMovieYoutubeTrailerId repository';
        }
        final trailerId = resTrailerId.fold((l) => null, (r) => r);
        movie = movie?.copyWith(trailerYoutubeId: trailerId);
      } catch (e) {
        failed(e.toString());
      }
      return success(movie);
    } catch (e) {
      return failed(e.toString());
    }
  }
}
