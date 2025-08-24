import 'package:dartz/dartz.dart';
import 'package:movie_db/core/error/failure.dart';
import 'package:movie_db/core/usecase/usecase.dart';
import 'package:movie_db/features/movie_detail/domain/entity/movies_detail.dart';
import 'package:movie_db/features/movie_detail/domain/repository/movie_detail_repository.dart';

class GetMovieDetailUsecase extends UseCase<MoviesDetail, int> {
  final MovieDetailRepository _movieDetailRepository;

  GetMovieDetailUsecase(this._movieDetailRepository);

  @override
  Future<Either<Failure, MoviesDetail>> call(int movieId) {
    return _movieDetailRepository.getMovieDetail(movieId: movieId);
  }
}
