import 'package:drift/drift.dart';

@DataClassName('GenreTable')
class Genres extends Table {
  IntColumn get id => integer()();
  TextColumn get name => text()();
  @override
  Set<Column> get primaryKey => {id};
}
