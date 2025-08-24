import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:movie_db/core/error/failure.dart';
import 'package:movie_db/data/entities/base_response.dart';
import 'package:movie_db/data/entities/movie.dart';
import 'package:movie_db/features/search_movies/data/sources/search_movies_service.dart';
import 'package:movie_db/features/search_movies/domain/repository/search_movies_repository.dart';

class SearchMoviesRespositoryImpl extends SearchMoviesRepository {
  final SearchMoviesService _searchMoviesService;

  SearchMoviesRespositoryImpl(this._searchMoviesService);

  @override
  Future<Either<Failure, BaseResponse<List<Movie>>>> searchMovies({
    required String query,
  }) async {
    try {
      final response = await _searchMoviesService.searchMovies(query: query);

      return Right(response);
    } on DioException catch (e) {
      return Left(ServerFailure(message: e.message ?? "Something went wrong"));
    } catch (e) {
      return Left(UnknownFailure(message: e.toString()));
    }
  }
}
