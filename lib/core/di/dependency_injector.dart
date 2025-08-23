import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';
import '../network/dio_client.dart';
import '../network/retrofit_client.dart';

final sl = GetIt.instance;

Future<void> initDependencies() async {
  // Dio
  sl.registerLazySingleton<Dio>(() => DioClient.getDio());

  // Retrofit
  sl.registerLazySingleton<RetrofitClient>(
    () => RetrofitClient(sl(), baseUrl: sl<Dio>().options.baseUrl),
  );

  // Repositories

  // Usecases
}
