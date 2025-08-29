import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';
import 'package:movie_db/data/local/app_database.dart';
import 'package:movie_db/features/movie_detail/data/repository/movie_detail_repository_impl.dart';
import 'package:movie_db/features/movie_detail/data/sources/movie_detail_service.dart';
import 'package:movie_db/features/movie_detail/domain/repository/movie_detail_repository.dart';
import 'package:movie_db/features/movie_detail/domain/usecase/get_movie_detail_usecase.dart';
import 'package:movie_db/features/movie_detail/domain/usecase/update_favourite_status_usecase.dart';
import 'package:movie_db/features/movie_detail/presentation/bloc/movie_detail_bloc.dart';
import 'package:movie_db/features/movie_list/data/respository/movie_list_repository_impl.dart';
import 'package:movie_db/features/movie_list/data/sources/api/get_movies_service.dart';
import 'package:movie_db/features/movie_list/data/sources/local/drift_genres_dao.dart';
import 'package:movie_db/features/movie_list/data/sources/local/drift_movie_dao.dart';
import 'package:movie_db/features/movie_list/domain/repository/movie_list_repository.dart';
import 'package:movie_db/features/movie_list/domain/usecase/get_favourite_movies_usecase.dart';
import 'package:movie_db/features/movie_list/domain/usecase/get_now_playing_movies_usecase.dart';
import 'package:movie_db/features/movie_list/domain/usecase/get_popular_movies_usecase.dart';
import 'package:movie_db/features/movie_list/domain/usecase/get_top_rated_movies_usecase.dart';
import 'package:movie_db/features/movie_list/domain/usecase/get_upcoming_movies_usecase.dart';
import 'package:movie_db/features/movie_list/presentation/bloc/get_favourite_movies_bloc/get_favourite_movies_bloc.dart';
import 'package:movie_db/features/movie_list/presentation/bloc/get_now_playing_movies_bloc.dart';
import 'package:movie_db/features/movie_list/presentation/bloc/get_popular_movies_bloc.dart';
import 'package:movie_db/features/movie_list/presentation/bloc/get_top_rated_movies_bloc.dart';
import 'package:movie_db/features/movie_list/presentation/bloc/get_upcoming_movies_bloc.dart';
import 'package:movie_db/features/search_movies/data/repository/search_movies_respository_impl.dart';
import 'package:movie_db/features/search_movies/data/sources/search_movies_service.dart';
import 'package:movie_db/features/search_movies/domain/repository/search_movies_repository.dart';
import 'package:movie_db/features/search_movies/domain/usecase/search_movies_usecase.dart';
import 'package:movie_db/features/search_movies/presentation/bloc/search_movie_bloc.dart';
import '../network/dio_client.dart';

final sl = GetIt.instance;

Future<void> initDependencies() async {
  /// MARK:- DIO
  sl.registerLazySingleton<Dio>(() => DioClient.getDio());
  sl.registerLazySingleton<AppDatabase>(() => AppDatabase());

  /// MARK:- Services
  sl.registerLazySingleton<GetMoviesService>(() => GetMoviesService(sl<Dio>()));
  sl.registerLazySingleton<MovieDetailService>(
    () => MovieDetailService(sl<Dio>()),
  );
  sl.registerLazySingleton<SearchMoviesService>(
    () => SearchMoviesService(sl<Dio>()),
  );
  sl.registerLazySingleton<DriftMovieDao>(
    () => DriftMovieDao(sl<AppDatabase>()),
  );
  sl.registerLazySingleton<DriftGenreDao>(
    () => DriftGenreDao(sl<AppDatabase>()),
  );

  /// MARK:- Repositories
  sl.registerLazySingleton<MovieListRepository>(
    () => MovieListRepositoryImpl(sl<GetMoviesService>(), sl<DriftMovieDao>()),
  );
  sl.registerLazySingleton<MovieDetailRepository>(
    () => MovieDetailRepositoryImpl(
      sl<MovieDetailService>(),
      sl<DriftGenreDao>(),
      sl<DriftMovieDao>(),
    ),
  );
  sl.registerLazySingleton<SearchMoviesRepository>(
    () => SearchMoviesRespositoryImpl(sl<SearchMoviesService>()),
  );

  /// MARK:- Usecases
  sl.registerLazySingleton<GetMovieDetailUsecase>(
    () => GetMovieDetailUsecase(sl<MovieDetailRepository>()),
  );
  sl.registerLazySingleton<GetNowPlayingMoviesUsecase>(
    () => GetNowPlayingMoviesUsecase(sl<MovieListRepository>()),
  );
  sl.registerLazySingleton<GetPopularMoviesUsecase>(
    () => GetPopularMoviesUsecase(sl<MovieListRepository>()),
  );
  sl.registerLazySingleton<GetTopRatedMoviesUsecase>(
    () => GetTopRatedMoviesUsecase(sl<MovieListRepository>()),
  );
  sl.registerLazySingleton<GetUpcomingMoviesUsecase>(
    () => GetUpcomingMoviesUsecase(sl<MovieListRepository>()),
  );
  sl.registerLazySingleton<SearchMoviesUsecase>(
    () => SearchMoviesUsecase(sl<SearchMoviesRepository>()),
  );
  sl.registerLazySingleton<UpdateFavoriteStatusUsecase>(
    () => UpdateFavoriteStatusUsecase(sl<MovieDetailRepository>()),
  );
  sl.registerLazySingleton<GetFavouriteMoviesUsecase>(
    () => GetFavouriteMoviesUsecase(sl<MovieListRepository>()),
  );

  /// MARK:- Bloc
  sl.registerFactory<GetTopRatedMoviesBloc>(
    () => GetTopRatedMoviesBloc(sl<GetTopRatedMoviesUsecase>()),
  );
  sl.registerFactory<GetNowPlayingMoviesBloc>(
    () => GetNowPlayingMoviesBloc(sl<GetNowPlayingMoviesUsecase>()),
  );
  sl.registerFactory<GetPopularMoviesBloc>(
    () => GetPopularMoviesBloc(sl<GetPopularMoviesUsecase>()),
  );
  sl.registerFactory<GetUpcomingMoviesBloc>(
    () => GetUpcomingMoviesBloc(sl<GetUpcomingMoviesUsecase>()),
  );
  sl.registerFactory<SearchMovieBloc>(
    () => SearchMovieBloc(sl<SearchMoviesUsecase>()),
  );
  sl.registerFactory<GetFavouriteMoviesBloc>(
    () => GetFavouriteMoviesBloc(
      GetFavouriteMoviesState(),
      sl<GetFavouriteMoviesUsecase>(),
    ),
  );
  sl.registerFactory<MovieDetailBloc>(
    () => MovieDetailBloc(
      MovieDetailState(),
      sl<GetMovieDetailUsecase>(),
      sl<UpdateFavoriteStatusUsecase>(),
    ),
  );
}
