import 'package:dartz/dartz.dart';
import 'package:movie_db/core/error/failure.dart';
import 'package:movie_db/core/usecase/usecase.dart';
import 'package:movie_db/data/entities/base_response.dart';
import 'package:movie_db/data/entities/movie.dart';
import 'package:movie_db/features/movie_list/domain/repository/movie_list_repository.dart';

class GetTopRatedMoviesUsecase
    implements UseCase<BaseResponse<List<Movie>>, NoParams> {
  final MovieListRepository _movieListRepository;

  GetTopRatedMoviesUsecase(this._movieListRepository);

  @override
  Future<Either<Failure, BaseResponse<List<Movie>>>> call(NoParams params) {
    return _movieListRepository.getTopRatedMovies();
  }
}
