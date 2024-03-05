import 'package:dio/dio.dart';
import 'package:movie_booking_app/core/constant/config.dart';

final InterceptorsWrapper apiKeyInterceptor = InterceptorsWrapper(
  onRequest: (RequestOptions options, RequestInterceptorHandler handler) {
    options.queryParameters = options.queryParameters
      ..addAll({'api_key': Config.apiKey});
    return handler.next(options);
  },
  onResponse: (Response response, ResponseInterceptorHandler handler) {
    return handler.next(response);
  },
  onError: (DioException error, ErrorInterceptorHandler handler) {
    return handler.next(error);
  },
);
