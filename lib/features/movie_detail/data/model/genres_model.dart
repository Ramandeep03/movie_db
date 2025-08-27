import 'package:movie_db/features/movie_detail/domain/entity/genres.dart';
import 'package:json_annotation/json_annotation.dart';

part 'genres_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class GenresModel extends Genres {
  GenresModel({required super.id, required super.name});

  factory GenresModel.fromJson(Map<String, dynamic> json) =>
      _$GenresModelFromJson(json);

  Map<String, dynamic> toJson() => _$GenresModelToJson(this);

  factory GenresModel.fromEntity(Genres entity) {
    return GenresModel(id: entity.id, name: entity.name);
  }

  Genres toEntity() => Genres(id: id, name: name);
}
