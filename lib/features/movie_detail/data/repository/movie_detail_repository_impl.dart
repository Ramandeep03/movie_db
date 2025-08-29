import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:movie_db/core/error/failure.dart';
import 'package:movie_db/data/local/app_database.dart';
import 'package:movie_db/features/movie_detail/data/model/genres_model.dart';
import 'package:movie_db/features/movie_detail/data/model/movie_detail_model.dart';
import 'package:movie_db/features/movie_detail/data/sources/movie_detail_service.dart';
import 'package:movie_db/features/movie_detail/domain/repository/movie_detail_repository.dart';
import 'package:movie_db/features/movie_list/data/sources/local/drift_genres_dao.dart';
import 'package:movie_db/features/movie_list/data/sources/local/drift_movie_dao.dart';

class MovieDetailRepositoryImpl implements MovieDetailRepository {
  final MovieDetailService _movieDetailService;
  final DriftMovieDao _driftMovieDao;
  final DriftGenreDao _driftGenreDao;

  MovieDetailRepositoryImpl(
    this._movieDetailService,
    this._driftGenreDao,
    this._driftMovieDao,
  );

  @override
  Future<Either<Failure, MovieDetailModel>> getMovieDetail({
    required int movieId,
  }) async {
    try {
      final response = await _movieDetailService.getMovieDetail(
        movieId: movieId,
      );
      final isFavourite = await _driftMovieDao.isFavourite(response.id);
      _driftMovieDao.updateMovie(response.toTable());
      _driftGenreDao.insertOrReplaceGenres(
        response.genres!.map((genre) => genre.toTable()).toList(),
      );

      return Right(response.copyWith(isFavourite: isFavourite));
    } on DioException catch (e) {
      if (e.type == DioExceptionType.cancel) {
        final data = await _driftMovieDao.getMovie(movieId);
        final genres = await _driftGenreDao.getGenresByIds(data.genreIds);
        List<GenresModel> genreModels = genres
            .map((g) => GenresModel.fromTable(g))
            .toList();
        return Right(MovieDetailModel.fromTable(data, genreModels));
      } else {
        return Left(
          ServerFailure(message: e.message ?? "Something went wrong"),
        );
      }
    } catch (e) {
      return Left(UnknownFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, bool>> updateFavoriteStatus({
    required MovieTable movie,
  }) async {
    final response = await _driftMovieDao.updateMovie(movie);
    if (response) {
      return Right(response);
    } else {
      return Left(UnknownFailure(message: "Failed to Update favourite"));
    }
  }
}
