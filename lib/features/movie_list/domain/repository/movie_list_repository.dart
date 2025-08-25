import 'package:dartz/dartz.dart';
import 'package:movie_db/core/error/failure.dart';
import 'package:movie_db/data/entities/base_response.dart';
import 'package:movie_db/data/entities/movie.dart';

abstract class MovieListRepository {
  Future<Either<Failure, BaseResponse<List<Movie>>>> getNowPlayingMovies();

  Future<Either<Failure, BaseResponse<List<Movie>>>> getPopularMovies();

  Future<Either<Failure, BaseResponse<List<Movie>>>> getTopRatedMovies();

  Future<Either<Failure, BaseResponse<List<Movie>>>> getUpcomingMovies();
}
