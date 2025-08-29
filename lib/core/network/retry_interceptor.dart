import 'package:dio/dio.dart';

class RetryOnConnectionChangeInterceptor extends Interceptor {
  final Dio dio;
  final int retries;

  RetryOnConnectionChangeInterceptor(this.dio, {this.retries = 3});

  @override
  Future onError(DioError err, ErrorInterceptorHandler handler) async {
    // Retry only for connection errors
    if (err.type != DioErrorType.connectionError &&
        err.type != DioErrorType.connectionTimeout &&
        err.type != DioErrorType.unknown) {
      return handler.next(err);
    }

    var attempt = 0;

    while (attempt < retries) {
      attempt++;
      try {
        // ⚡ Make a fresh request without triggering interceptors again
        final response = await dio.fetch(
          err.requestOptions.copyWith(
            extra: {
              "retries_disabled": true, // mark so we can skip interceptor
            },
          ),
        );
        return handler.resolve(response);
      } catch (e) {
        if (attempt >= retries) {
          return handler.next(err);
        }
      }
    }

    return handler.next(err);
  }
}
