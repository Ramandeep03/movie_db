import 'package:movie_db/features/movie_detail/domain/entity/videos.dart';
import 'package:json_annotation/json_annotation.dart';

part 'video_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class VideoModel extends Videos {
  VideoModel({
    required super.name,
    required super.key,
    required super.site,
    required super.size,
    required super.type,
    required super.official,
    required super.publishedAt,
    required super.id,
  });

  factory VideoModel.fromJson(Map<String, dynamic> json) =>
      _$VideoModelFromJson(json);

  Map<String, dynamic> toJson() => _$VideoModelToJson(this);

  factory VideoModel.fromEntity(Videos entity) {
    return VideoModel(
      name: entity.name,
      key: entity.key,
      site: entity.site,
      size: entity.size,
      type: entity.type,
      official: entity.official,
      publishedAt: entity.publishedAt,
      id: entity.id,
    );
  }

  Videos toEntity() => Videos(
    name: name,
    key: key,
    site: site,
    size: size,
    type: type,
    official: official,
    publishedAt: publishedAt,
    id: id,
  );
}
