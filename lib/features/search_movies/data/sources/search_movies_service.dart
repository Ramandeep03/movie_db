import 'package:dio/dio.dart';
import 'package:movie_db/data/models/base_response_model.dart';
import 'package:movie_db/data/models/movie_model.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

part 'search_movies_service.g.dart';

@RestApi()
abstract class SearchMoviesService {
  factory SearchMoviesService(Dio dio, {String baseUrl}) = _SearchMoviesService;

  @GET('search/movie')
  Future<BaseResponseModel<List<MovieModel>>> searchMovies({
    @Query('query') required String query,
  });
}
