import 'package:drift/drift.dart';
import 'package:movie_db/data/local/app_database.dart';
import 'package:movie_db/data/local/movie_table.dart';

part 'drift_movie_dao.g.dart';

@DriftAccessor(tables: [Movies])
class DriftMovieDao extends DatabaseAccessor<AppDatabase>
    with _$DriftMovieDaoMixin {
  DriftMovieDao(super.db);

  Future<List<MovieTable>> getTopRatedMovies() {
    return (select(movies)
          ..orderBy([(t) => OrderingTerm.desc(t.voteAverage)])
          ..limit(20))
        .get();
  }

  Future<List<MovieTable>> getPopularMovies() {
    return (select(movies)
          ..orderBy([(t) => OrderingTerm.desc(t.popularity)])
          ..limit(20))
        .get();
  }

  Future<List<MovieTable>> getUpcomingMovies() {
    final now = DateTime.now().toIso8601String().split('T').first;
    return (select(movies)
          ..where((t) => t.releaseDate.isBiggerThanValue(now))
          ..orderBy([(t) => OrderingTerm.asc(t.releaseDate)]))
        .get();
  }

  Future<List<MovieTable>> getNowPlayingMovies() {
    final now = DateTime.now().toIso8601String().split('T').first;
    return (select(movies)
          ..where((t) => t.releaseDate.isSmallerOrEqualValue(now))
          ..orderBy([(t) => OrderingTerm.desc(t.releaseDate)]))
        .get();
  }

  Future<List<MovieTable>> getFavouriteMovies() {
    return (select(movies)..where((t) => t.isFavourite.equals(true))).get();
  }

  Future<void> insertOrReplaceMovies(List<MovieTable> moviesList) async {
    await batch((batch) {
      batch.insertAllOnConflictUpdate(movies, moviesList);
    });
  }

  Future<MovieTable> getMovie(int movieId) {
    return (select(movies)..where((m) => m.id.equals(movieId))).getSingle();
  }

  Future<bool> isFavourite(int movieId) async {
    MovieTable data = await (select(
      movies,
    )..where((m) => m.id.equals(movieId))).getSingle();

    return data.isFavourite;
  }

  Future<bool> updateMovie(MovieTable movie) => update(movies).replace(movie);

  Future<int> deleteMovie(MovieTable movie) => delete(movies).delete(movie);
}
