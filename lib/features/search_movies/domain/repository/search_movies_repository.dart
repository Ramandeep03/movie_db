import 'package:dartz/dartz.dart';
import 'package:movie_db/core/error/failure.dart';
import 'package:movie_db/data/entities/base_response.dart';
import 'package:movie_db/data/entities/movie.dart';

abstract class SearchMoviesRepository {
  Future<Either<Failure, BaseResponse<List<Movie>>>> searchMovies({
    required String query,
  });
}
