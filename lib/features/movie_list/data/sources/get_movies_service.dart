import 'package:dio/dio.dart';
import 'package:movie_db/data/models/base_response_model.dart';
import 'package:movie_db/data/models/movie_model.dart';
import 'package:retrofit/retrofit.dart';

part 'get_movies_service.g.dart';

@RestApi()
abstract class GetMoviesService {
  factory GetMoviesService(Dio dio, {String baseUrl}) = _GetMoviesService;

  @GET('discover/movie')
  Future<BaseResponseModel<List<MovieModel>>> getNowPlayingMovies({
    @Query('include_adult') bool includeAdult = false,
    @Query('include_video') bool includeVideo = true,
    @Query('language') String language = 'en-US',
    @Query('sort_by') String sortBy = 'popularity.desc',
    @Query('with_release_type') String withReleaseType = '2|3',
    @Query('release_date.gte') required DateTime minDate,
    @Query('release_date.lte') required DateTime maxDate,
  });

  @GET('discover/movie')
  Future<BaseResponseModel<List<MovieModel>>> getPopularMovies({
    @Query('include_adult') bool includeAdult = false,
    @Query('include_video') bool includeVideo = true,
    @Query('language') String language = 'en-US',
    @Query('sort_by') String sortBy = 'popularity.desc',
  });

  @GET('discover/movie')
  Future<BaseResponseModel<List<MovieModel>>> getTopRatedMovies({
    @Query('include_adult') bool includeAdult = false,
    @Query('include_video') bool includeVideo = true,
    @Query('language') String language = 'en-US',
    @Query('sort_by') String sortBy = 'vote_average.desc',
    @Query('without_genres') String withReleaseType = '99,10755',
    @Query('vote_count.gte') int voteAverage = 200,
  });

  @GET('discover/movie')
  Future<BaseResponseModel<List<MovieModel>>> getUpcomingMovies({
    @Query('include_adult') bool includeAdult = false,
    @Query('include_video') bool includeVideo = true,
    @Query('language') String language = 'en-US',
    @Query('sort_by') String sortBy = 'popularity.desc',
    @Query('with_release_type') String withReleaseType = '2|3',
    @Query('release_date.gte') required DateTime minDate,
    @Query('release_date.lte') required DateTime maxDate,
  });
}
