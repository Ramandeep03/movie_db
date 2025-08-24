import 'package:dio/dio.dart';
import 'package:movie_db/features/movie_detail/data/model/movie_detail_model.dart';
import 'package:retrofit/retrofit.dart';

part 'movie_detail_service.g.dart';

@RestApi()
abstract class MovieDetailService {
  factory MovieDetailService(Dio dio, {String baseUrl}) = _MovieDetailService;

  @GET('movie/{movie_id}')
  Future<MovieDetailModel> getMovieDetail({
    @Path('movie_id') required int movieId,
  });
}
