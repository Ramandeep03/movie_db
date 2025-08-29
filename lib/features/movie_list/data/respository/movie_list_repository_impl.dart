import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:movie_db/core/error/failure.dart';
import 'package:movie_db/data/entities/base_response.dart';
import 'package:movie_db/data/models/base_response_model.dart';
import 'package:movie_db/data/models/movie_model.dart';
import 'package:movie_db/features/movie_list/data/sources/api/get_movies_service.dart';
import 'package:movie_db/features/movie_list/data/sources/local/drift_movie_dao.dart';
import 'package:movie_db/features/movie_list/domain/repository/movie_list_repository.dart';

class MovieListRepositoryImpl implements MovieListRepository {
  final GetMoviesService _getMoviesService;
  final DriftMovieDao _driftMovieDao;

  const MovieListRepositoryImpl(this._getMoviesService, this._driftMovieDao);

  @override
  Future<Either<Failure, BaseResponseModel<List<MovieModel>>>>
  getNowPlayingMovies() async {
    try {
      final response = await _getMoviesService.getNowPlayingMovies();
      _driftMovieDao.insertOrReplaceMovies(
        response.results.map((m) => m.toTable()).toList(),
      );
      return Right(response);
    } on DioException catch (e) {
      if (e.type == DioExceptionType.cancel) {
        final data = await _driftMovieDao.getNowPlayingMovies();
        List<MovieModel> list = data
            .map((t) => MovieModel.fromTable(t))
            .toList();
        return Right(BaseResponseModel(results: list));
      }
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
      _driftMovieDao.insertOrReplaceMovies(
        response.results.map((m) => m.toTable()).toList(),
      );
      return Right(response);
    } on DioException catch (e) {
      if (e.type == DioExceptionType.cancel) {
        final data = await _driftMovieDao.getPopularMovies();
        List<MovieModel> list = data
            .map((t) => MovieModel.fromTable(t))
            .toList();
        return Right(BaseResponseModel(results: list));
      }
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
      _driftMovieDao.insertOrReplaceMovies(
        response.results.map((m) => m.toTable()).toList(),
      );
      return Right(response);
    } on DioException catch (e) {
      if (e.type == DioExceptionType.cancel) {
        final data = await _driftMovieDao.getTopRatedMovies();
        List<MovieModel> list = data
            .map((t) => MovieModel.fromTable(t))
            .toList();
        return Right(BaseResponseModel(results: list));
      }
      return Left(ServerFailure(message: e.message ?? "Something went wrong"));
    } catch (e) {
      return Left(UnknownFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, BaseResponse<List<MovieModel>>>>
  getUpcomingMovies() async {
    try {
      final response = await _getMoviesService.getUpcomingMovies();
      _driftMovieDao.insertOrReplaceMovies(
        response.results.map((m) => m.toTable()).toList(),
      );
      return Right(response);
    } on DioException catch (e) {
      if (e.type == DioExceptionType.cancel) {
        final data = await _driftMovieDao.getUpcomingMovies();
        List<MovieModel> list = data
            .map((t) => MovieModel.fromTable(t))
            .toList();
        return Right(BaseResponseModel(results: list));
      }
      return Left(ServerFailure(message: e.message ?? "Something went wrong"));
    } catch (e) {
      return Left(UnknownFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<MovieModel>>> getFavouriteMovies() async {
    try {
      final respone = await _driftMovieDao.getFavouriteMovies();

      final List<MovieModel> data = respone
          .map((table) => MovieModel.fromTable(table))
          .toList();

      return Right(data);
    } catch (e) {
      return Left(UnknownFailure(message: e.toString()));
    }
  }
}
