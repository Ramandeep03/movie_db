import 'package:dio/dio.dart';
import 'package:movie_db/core/constants/keys.dart';
import 'package:movie_db/core/env/env.dart';

class DioInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.queryParameters[Keys.apiKey] = Env.config.apiKey;
    super.onRequest(options, handler);
  }
}
