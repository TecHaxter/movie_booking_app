import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:movie_booking_app/core/constant/config.dart';
import 'package:movie_booking_app/core/service/caching/caching_service.dart';
import 'package:movie_booking_app/core/service/router/app_router.dart';
import 'package:movie_booking_app/core/util/http/interceptor.dart';
import 'package:path_provider/path_provider.dart';

class AppServices {
  AppServices._();

  static late AppRouter router;
  static late Directory storageDirectory;
  static late CachingService caching;
  static late Dio dio;
}

Future<void> initServices() async {
  await loadConfig();
  AppServices.dio = Dio(
    BaseOptions(
      baseUrl: 'https://api.themoviedb.org/3/',
    ),
  );
  AppServices.dio.interceptors.add(apiKeyInterceptor);
  AppServices.router = AppRouter();
  final dir = await getApplicationDocumentsDirectory();
  AppServices.storageDirectory = dir;
  AppServices.caching = CachingService(dir);
  await AppServices.caching.init();
}

Future<void> loadConfig() async {
  await dotenv.load();
  Config.apiKey = dotenv.env['API_KEY'] ?? Config.apiKey;
}
