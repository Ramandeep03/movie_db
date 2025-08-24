import 'package:dartz/dartz.dart';
import 'package:movie_db/core/error/failure.dart';
import 'package:movie_db/core/usecase/usecase.dart';
import 'package:movie_db/data/entities/base_response.dart';
import 'package:movie_db/data/entities/movie.dart';
import 'package:movie_db/features/search_movies/domain/repository/search_movies_repository.dart';

class SearchMoviesUsecase
    implements UseCase<BaseResponse<List<Movie>>, String> {
  final SearchMoviesRepository _searchMoviesRepository;

  SearchMoviesUsecase(this._searchMoviesRepository);

  @override
  Future<Either<Failure, BaseResponse<List<Movie>>>> call(String query) {
    return _searchMoviesRepository.searchMovies(query: query);
  }
}
