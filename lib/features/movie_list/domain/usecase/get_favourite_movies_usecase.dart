import 'package:dartz/dartz.dart';
import 'package:movie_db/core/error/failure.dart';
import 'package:movie_db/core/usecase/usecase.dart';
import 'package:movie_db/data/entities/movie.dart';
import 'package:movie_db/features/movie_list/domain/repository/movie_list_repository.dart';

class GetFavouriteMoviesUsecase extends UseCase<List<Movie>, NoParams> {
  final MovieListRepository _repository;

  GetFavouriteMoviesUsecase(this._repository);

  @override
  Future<Either<Failure, List<Movie>>> call(NoParams params) {
    return _repository.getFavouriteMovies();
  }
}
