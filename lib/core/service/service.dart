import 'package:dio/dio.dart';
import 'package:movie_booking_app/core/service/router/app_router.dart';
import 'package:movie_booking_app/core/util/http/interceptor.dart';

class AppServices {
  AppServices._();

  static AppRouter router = AppRouter();
  static Dio dio = Dio(
    BaseOptions(
      baseUrl: 'https://api.themoviedb.org/3/',
    ),
  )..interceptors.add(apiKeyInterceptor);
}
