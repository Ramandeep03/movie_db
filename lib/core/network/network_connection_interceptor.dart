import 'dart:io';
import 'package:dio/dio.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

class NetworkConnectionInterceptor extends Interceptor {
  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    var connectivityResult = await Connectivity().checkConnectivity();

    if (connectivityResult == ConnectivityResult.none) {
      return handler.reject(
        DioError(
          requestOptions: options,
          error: "No internet connection",
          type: DioErrorType.cancel,
        ),
      );
    }
    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isEmpty || result.first.rawAddress.isEmpty) {
        return handler.reject(
          DioError(
            requestOptions: options,
            error: "No internet access",
            type: DioErrorType.cancel,
          ),
        );
      }
    } catch (_) {
      return handler.reject(
        DioError(
          requestOptions: options,
          error: "No internet access",
          type: DioErrorType.cancel,
        ),
      );
    }

    return handler.next(options);
  }
}
