import 'package:dartz/dartz.dart';
import 'package:movie_db/core/error/failure.dart';
import 'package:movie_db/core/usecase/usecase.dart';
import 'package:movie_db/data/local/app_database.dart';
import 'package:movie_db/features/movie_detail/domain/repository/movie_detail_repository.dart';

class UpdateFavoriteStatusUsecase extends UseCase<bool, MovieTable> {
  final MovieDetailRepository _detailRepositoryImpl;

  UpdateFavoriteStatusUsecase(this._detailRepositoryImpl);

  @override
  Future<Either<Failure, bool>> call(MovieTable movie) {
    return _detailRepositoryImpl.updateFavoriteStatus(movie: movie);
  }
}
