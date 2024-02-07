import 'package:dio/dio.dart';
import 'package:movie_booking_app/core/util/http/responser.dart';
import 'package:movie_booking_app/data/source/models/image_data.dart';
import 'package:movie_booking_app/data/source/models/movie_details_data.dart';
import 'package:movie_booking_app/data/source/models/upcoming_movies_data.dart';
import 'package:movie_booking_app/data/source/models/video_data.dart';

sealed class MoviesDataSource {
  Future<Responser<UpcomingMoviesData>> fetchUpcomingMovies({int page = 1});
  Future<Responser<MovieDetailsData>> fetchMovieDetails({required int id});
  Future<Responser<ImageData?>> fetchImagesOfMovie({required int id});
  Future<Responser<VideoData?>> fetchVideoOfMovie({required int id});
}

class MoviesDataSourceImpl implements MoviesDataSource {
  final Dio dio;
  const MoviesDataSourceImpl(this.dio);
  @override
  Future<Responser<UpcomingMoviesData>> fetchUpcomingMovies(
      {int page = 1}) async {
    try {
      final res = await dio.get(
        'movie/upcoming',
        queryParameters: {
          'page': page,
        },
      );
      if (res.statusCode != 200) {
        throw res.statusMessage ?? 'Status Code Error: ${res.statusCode}';
      }
      final data = UpcomingMoviesData.fromJson(Map.from(res.data as Map));
      return success(data);
    } catch (e) {
      return failed(e.toString());
    }
  }

  @override
  Future<Responser<MovieDetailsData>> fetchMovieDetails(
      {required int id}) async {
    try {
      final res = await dio.get(
        'movie/$id',
      );
      if (res.statusCode != 200) {
        throw res.statusMessage ?? 'Status Code Error: ${res.statusCode}';
      }
      final data = MovieDetailsData.fromJson(Map.from(res.data as Map));
      return success(data);
    } catch (e) {
      return failed(e.toString());
    }
  }

  @override
  Future<Responser<ImageData>> fetchImagesOfMovie({
    required int id,
  }) async {
    try {
      final res = await dio.get(
        'movie/$id/images',
      );
      if (res.statusCode != 200) {
        throw res.statusMessage ?? 'Status Code Error: ${res.statusCode}';
      }
      final data = ImageData.fromJson(Map.from(res.data as Map));

      return success(data);
    } catch (e) {
      return failed(e.toString());
    }
  }

  @override
  Future<Responser<VideoData?>> fetchVideoOfMovie({
    required int id,
  }) async {
    try {
      final res = await dio.get(
        'movie/$id/videos',
      );
      if (res.statusCode != 200) {
        throw res.statusMessage ?? 'Status Code Error: ${res.statusCode}';
      }
      final data = VideoData.fromJson(Map.from(res.data as Map));
      return success(data);
    } catch (e) {
      return failed(e.toString());
    }
  }
}
