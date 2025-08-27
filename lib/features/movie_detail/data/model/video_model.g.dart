// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VideoModel _$VideoModelFromJson(Map<String, dynamic> json) => VideoModel(
  name: json['name'] as String,
  key: json['key'] as String,
  site: json['site'] as String,
  size: (json['size'] as num).toInt(),
  type: json['type'] as String,
  official: json['official'] as bool,
  publishedAt: json['published_at'] as String,
  id: json['id'] as String,
);

Map<String, dynamic> _$VideoModelToJson(VideoModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'key': instance.key,
      'site': instance.site,
      'size': instance.size,
      'type': instance.type,
      'official': instance.official,
      'published_at': instance.publishedAt,
      'id': instance.id,
    };
