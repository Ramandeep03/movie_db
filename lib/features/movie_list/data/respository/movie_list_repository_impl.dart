import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:movie_db/core/error/failure.dart';
import 'package:movie_db/data/entities/base_response.dart';
import 'package:movie_db/data/models/base_response_model.dart';
import 'package:movie_db/data/models/movie_model.dart';
import 'package:movie_db/features/movie_list/data/sources/get_movies_service.dart';
import 'package:movie_db/features/movie_list/domain/repository/movie_list_repository.dart';

class MovieListRepositoryImpl implements MovieListRepository {
  final GetMoviesService _getMoviesService;

  const MovieListRepositoryImpl(this._getMoviesService);

  @override
  Future<Either<Failure, BaseResponseModel<List<MovieModel>>>>
  getNowPlayingMovies({required DateTime startDate}) async {
    try {
      final response = await _getMoviesService.getNowPlayingMovies(
        minDate: startDate,
        maxDate: startDate.add(const Duration(days: 7)),
      );

      return Right(response);
    } on DioException catch (e) {
      return Left(ServerFailure(message: e.message ?? "Something went wrong"));
    } catch (e) {
      return Left(UnknownFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, BaseResponse<List<MovieModel>>>>
  getPopularMovies() async {
    try {
      final response = await _getMoviesService.getPopularMovies();

      return Right(response);
    } on DioException catch (e) {
      return Left(ServerFailure(message: e.message ?? "Something went wrong"));
    } catch (e) {
      return Left(UnknownFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, BaseResponse<List<MovieModel>>>>
  getTopRatedMovies() async {
    try {
      final response = await _getMoviesService.getTopRatedMovies();

      return Right(response);
    } on DioException catch (e) {
      return Left(ServerFailure(message: e.message ?? "Something went wrong"));
    } catch (e) {
      return Left(UnknownFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, BaseResponse<List<MovieModel>>>> getUpcomingMovies({
    required DateTime startDate,
  }) async {
    try {
      final response = await _getMoviesService.getUpcomingMovies(
        minDate: startDate,
        maxDate: startDate.add(const Duration(days: 7)),
      );

      return Right(response);
    } on DioException catch (e) {
      return Left(ServerFailure(message: e.message ?? "Something went wrong"));
    } catch (e) {
      return Left(UnknownFailure(message: e.toString()));
    }
  }
}
