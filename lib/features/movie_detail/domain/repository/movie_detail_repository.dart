import 'package:dartz/dartz.dart';
import 'package:movie_db/core/error/failure.dart';
import 'package:movie_db/data/local/app_database.dart';
import 'package:movie_db/features/movie_detail/domain/entity/movies_detail.dart';

abstract class MovieDetailRepository {
  Future<Either<Failure, MoviesDetail>> getMovieDetail({required int movieId});
  Future<Either<Failure, bool>> updateFavoriteStatus({
    required MovieTable movie,
  });
}
