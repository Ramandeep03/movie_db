import 'package:dio/dio.dart';
import 'package:movie_db/core/env/env.dart';
import 'dio_interceptor.dart';

class DioClient {
  static Dio getDio() {
    final dio = Dio(
      BaseOptions(
        baseUrl: Env.config.baseUrl,
        connectTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 10),
      ),
    );

    dio.interceptors.add(DioInterceptor());
    return dio;
  }
}
