import 'package:dio/dio.dart';

final InterceptorsWrapper apiKeyInterceptor = InterceptorsWrapper(
  onRequest: (RequestOptions options, RequestInterceptorHandler handler) {
    options.queryParameters = options.queryParameters
      ..addAll({'api_key': 'abde0aee1a34d3efd864c48ae3eab35a'});
    return handler.next(options);
  },
  onResponse: (Response response, ResponseInterceptorHandler handler) {
    return handler.next(response);
  },
  onError: (DioException error, ErrorInterceptorHandler handler) {
    return handler.next(error);
  },
);
