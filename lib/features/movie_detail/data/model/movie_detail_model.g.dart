// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieDetailModel _$MovieDetailModelFromJson(Map<String, dynamic> json) =>
    MovieDetailModel(
      id: (json['id'] as num).toInt(),
      adult: json['adult'] as bool?,
      backdropPath: json['backdrop_path'] as String?,
      belongToCollection: json['belong_to_collection'] as String?,
      budget: (json['budget'] as num?)?.toInt(),
      genreIds: (json['genre_ids'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      homePage: json['home_page'] as String?,
      imdbId: json['imdb_id'] as String?,
      originalLanguage: json['original_language'] as String?,
      originalTitle: json['original_title'] as String?,
      overview: json['overview'] as String?,
      popularity: (json['popularity'] as num?)?.toInt(),
      posterPath: json['poster_path'] as String?,
      releaseDate: json['release_date'] as String?,
      revenue: (json['revenue'] as num?)?.toInt(),
      runtime: (json['runtime'] as num?)?.toInt(),
      status: json['status'] as String?,
      tagline: json['tagline'] as String?,
      title: json['title'] as String?,
      video: json['video'] as bool?,
      voteAverage: (json['vote_average'] as num?)?.toInt(),
      voteCount: (json['vote_count'] as num?)?.toInt(),
      genres: (json['genres'] as List<dynamic>?)
          ?.map((e) => GenresModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      recommendations: json['recommendations'] == null
          ? null
          : BaseResponseModel<List<MovieModel>>.fromJson(
              json['recommendations'] as Map<String, dynamic>,
              (value) => (value as List<dynamic>)
                  .map((e) => MovieModel.fromJson(e as Map<String, dynamic>))
                  .toList(),
            ),
      similar: json['similar'] == null
          ? null
          : BaseResponseModel<List<MovieModel>>.fromJson(
              json['similar'] as Map<String, dynamic>,
              (value) => (value as List<dynamic>)
                  .map((e) => MovieModel.fromJson(e as Map<String, dynamic>))
                  .toList(),
            ),
      videos: json['videos'] == null
          ? null
          : BaseResponseModel<List<VideoModel>>.fromJson(
              json['videos'] as Map<String, dynamic>,
              (value) => (value as List<dynamic>)
                  .map((e) => VideoModel.fromJson(e as Map<String, dynamic>))
                  .toList(),
            ),
    );

Map<String, dynamic> _$MovieDetailModelToJson(MovieDetailModel instance) =>
    <String, dynamic>{
      'adult': instance.adult,
      'backdrop_path': instance.backdropPath,
      'genre_ids': instance.genreIds,
      'id': instance.id,
      'original_language': instance.originalLanguage,
      'original_title': instance.originalTitle,
      'overview': instance.overview,
      'popularity': instance.popularity,
      'poster_path': instance.posterPath,
      'release_date': instance.releaseDate,
      'title': instance.title,
      'video': instance.video,
      'vote_average': instance.voteAverage,
      'vote_count': instance.voteCount,
      'belong_to_collection': instance.belongToCollection,
      'budget': instance.budget,
      'home_page': instance.homePage,
      'imdb_id': instance.imdbId,
      'revenue': instance.revenue,
      'runtime': instance.runtime,
      'status': instance.status,
      'tagline': instance.tagline,
      'genres': instance.genres?.map((e) => e.toJson()).toList(),
      'videos': instance.videos?.toJson(
        (value) => value.map((e) => e.toJson()).toList(),
      ),
      'similar': instance.similar?.toJson(
        (value) => value.map((e) => e.toJson()).toList(),
      ),
      'recommendations': instance.recommendations?.toJson(
        (value) => value.map((e) => e.toJson()).toList(),
      ),
    };
