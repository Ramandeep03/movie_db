import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:movie_db/data/local/genre_table.dart';
import 'package:movie_db/data/local/movie_table.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

part 'app_database.g.dart';

@DriftDatabase(tables: [Movies, Genres])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 2;

  @override
  MigrationStrategy get migration => MigrationStrategy(
    onUpgrade: (m, from, to) async {
      if (from == 1) {
        await m.addColumn(movies, movies.isFavourite);
      }
    },
    beforeOpen: (details) async {},
  );
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    // Get the documents directory
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'app.db'));

    // Open Native Database
    return NativeDatabase.createInBackground(file);
  });
}
