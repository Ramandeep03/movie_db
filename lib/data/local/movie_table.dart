import 'dart:convert';

import 'package:drift/drift.dart';

@DataClassName('MovieTable')
class Movies extends Table {
  BoolColumn get adult => boolean().withDefault(const Constant(false))();
  TextColumn get backdrop => text().nullable()();
  TextColumn get genreIds => text().map(IntListConverter())();
  IntColumn get id => integer()();
  TextColumn get originalLanguage => text().nullable()();
  TextColumn get originalTitle => text().nullable()();
  TextColumn get overview => text().nullable()();
  IntColumn get popularity => integer().nullable()();
  TextColumn get posterPath => text().nullable()();
  TextColumn get releaseDate => text().nullable()();
  TextColumn get title => text().nullable()();
  BoolColumn get video => boolean().nullable()();
  RealColumn get voteAverage => real().nullable()();
  IntColumn get voteCount => integer().nullable()();
  TextColumn get belongToCollection => text().nullable()();
  IntColumn get budget => integer().nullable()();
  TextColumn get homepage => text().nullable()();
  TextColumn get imdbId => text().nullable()();
  IntColumn get revenue => integer().nullable()();
  IntColumn get runtime => integer().nullable()();
  TextColumn get status => text().nullable()();
  TextColumn get tagline => text().nullable()();
  BoolColumn get isFavourite => boolean().withDefault(const Constant(false))();
  @override
  Set<Column> get primaryKey => {id};
}

class IntListConverter extends TypeConverter<List<int>, String> {
  const IntListConverter();

  @override
  List<int> fromSql(String fromDb) {
    if (fromDb.isEmpty) return [];
    return List<int>.from(jsonDecode(fromDb));
  }

  @override
  String toSql(List<int> value) {
    return jsonEncode(value);
  }
}
