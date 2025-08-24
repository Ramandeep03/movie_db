import 'package:dartz/dartz.dart';
import 'package:movie_db/core/error/failure.dart';
import 'package:movie_db/core/usecase/usecase.dart';
import 'package:movie_db/data/entities/base_response.dart';
import 'package:movie_db/data/entities/movie.dart';
import 'package:movie_db/features/movie_list/domain/repository/movie_list_repository.dart';

class GetUpcomingMoviesUsecase
    implements UseCase<BaseResponse<List<Movie>>, DateTime> {
  final MovieListRepository _movieListRepository;

  GetUpcomingMoviesUsecase(this._movieListRepository);

  @override
  Future<Either<Failure, BaseResponse<List<Movie>>>> call(DateTime startDate) {
    return _movieListRepository.getUpcomingMovies(startDate: startDate);
  }
}
