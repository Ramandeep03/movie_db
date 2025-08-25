import 'package:dio/dio.dart';

class RetryOnConnectionChangeInterceptor extends Interceptor {
  final Dio dio;
  final int retries;

  RetryOnConnectionChangeInterceptor(this.dio, {this.retries = 3});

  @override
  Future onError(DioError err, ErrorInterceptorHandler handler) async {
    var attempt = 0;

    while (attempt < retries) {
      attempt++;
      try {
        final response = await dio.request(
          err.requestOptions.path,
          cancelToken: err.requestOptions.cancelToken,
          data: err.requestOptions.data,
          onReceiveProgress: err.requestOptions.onReceiveProgress,
          onSendProgress: err.requestOptions.onSendProgress,
          queryParameters: err.requestOptions.queryParameters,
          options: Options(
            method: err.requestOptions.method,
            headers: err.requestOptions.headers,
          ),
        );
        return handler.resolve(response);
      } catch (_) {
        if (attempt >= retries) {
          return handler.next(err);
        }
      }
    }
    return handler.next(err);
  }
}
