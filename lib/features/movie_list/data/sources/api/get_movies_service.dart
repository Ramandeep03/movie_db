import 'package:dio/dio.dart';
import 'package:movie_db/data/models/base_response_model.dart';
import 'package:movie_db/data/models/movie_model.dart';
import 'package:retrofit/retrofit.dart';

part 'get_movies_service.g.dart';

@RestApi()
abstract class GetMoviesService {
  factory GetMoviesService(Dio dio, {String baseUrl}) = _GetMoviesService;

  @GET('movie/now_playing')
  Future<BaseResponseModel<List<MovieModel>>> getNowPlayingMovies({
    @Query('language') String language = 'en-US',
  });

  @GET('movie/popular')
  Future<BaseResponseModel<List<MovieModel>>> getPopularMovies({
    @Query('language') String language = 'en-US',
  });

  @GET('movie/top_rated')
  Future<BaseResponseModel<List<MovieModel>>> getTopRatedMovies({
    @Query('language') String language = 'en-US',
  });

  @GET('movie/upcoming')
  Future<BaseResponseModel<List<MovieModel>>> getUpcomingMovies({
    @Query('language') String language = 'en-US',
  });
}
