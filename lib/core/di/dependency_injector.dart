import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';
import '../network/dio_client.dart';

final sl = GetIt.instance;

Future<void> initDependencies() async {
  // Dio
  sl.registerLazySingleton<Dio>(() => DioClient.getDio());

  // Retrofit

  // Repositories

  // Usecases
}
