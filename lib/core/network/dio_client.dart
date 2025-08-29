import 'package:dio/dio.dart';
import 'package:movie_db/core/env/env.dart';
import 'package:movie_db/core/network/dio_interceptor.dart';
import 'package:movie_db/core/network/network_connection_interceptor.dart';
import 'package:movie_db/core/network/retry_interceptor.dart';

class DioClient {
  static Dio getDio() {
    final dio = Dio(
      BaseOptions(
        baseUrl: Env.config.baseUrl,
        connectTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 10),
        headers: {
          'Authorization': 'Bearer ${Env.config.apiKey}',
          'accept': '*/*',
        },
      ),
    );
    dio.interceptors.add(DioInterceptor());
    dio.interceptors.add(NetworkConnectionInterceptor());
    dio.interceptors.add(RetryOnConnectionChangeInterceptor(dio, retries: 3));

    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          if (options.extra["retries_disabled"] == true) {
            return handler.next(options);
          }
          return handler.next(options);
        },
      ),
    );
    return dio;
  }
}
