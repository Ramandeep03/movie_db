import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:movie_db/core/error/failure.dart';
import 'package:movie_db/features/movie_detail/data/sources/movie_detail_service.dart';
import 'package:movie_db/features/movie_detail/domain/entity/movies_detail.dart';
import 'package:movie_db/features/movie_detail/domain/repository/movie_detail_repository.dart';

class MovieDetailRepositoryImpl implements MovieDetailRepository {
  final MovieDetailService _movieDetailService;

  MovieDetailRepositoryImpl(this._movieDetailService);

  @override
  Future<Either<Failure, MoviesDetail>> getMovieDetail({
    required int movieId,
  }) async {
    try {
      final response = await _movieDetailService.getMovieDetail(
        movieId: movieId,
      );

      return Right(response);
    } on DioException catch (e) {
      return Left(ServerFailure(message: e.message ?? "Something went wrong"));
    } catch (e) {
      return Left(UnknownFailure(message: e.toString()));
    }
  }
}
