import 'package:drift/drift.dart';
import 'package:movie_db/data/local/app_database.dart';
import 'package:movie_db/data/local/genre_table.dart';

part 'drift_genres_dao.g.dart';

@DriftAccessor(tables: [Genres])
class DriftGenreDao extends DatabaseAccessor<AppDatabase>
    with _$DriftGenreDaoMixin {
  DriftGenreDao(AppDatabase db) : super(db);

  Future<int> insertGenre(GenreTable data) => into(genres).insert(data);

  Future<void> insertGenres(List<GenreTable> genresList) async {
    await batch((batch) {
      batch.insertAll(genres, genresList);
    });
  }

  Future<void> insertOrReplaceGenres(List<GenreTable> genresList) async {
    await batch((batch) {
      batch.insertAllOnConflictUpdate(genres, genresList);
    });
  }

  Future<List<GenreTable>> getAllGenres() => select(genres).get();

  Future<bool> updateGenre(GenreTable data) => update(genres).replace(data);

  Future<int> deleteGenre(GenreTable data) => delete(genres).delete(data);

  Future<List<GenreTable>> getGenresByIds(List<int> ids) {
    return (select(genres)..where((g) => g.id.isIn(ids))).get();
  }
}
