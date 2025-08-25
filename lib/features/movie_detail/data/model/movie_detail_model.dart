import 'package:movie_db/features/movie_detail/domain/entity/movies_detail.dart';
import 'package:json_annotation/json_annotation.dart';

part 'movie_detail_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class MovieDetailModel extends MoviesDetail {
  MovieDetailModel({
    required super.id,
    super.adult,
    super.backdropPath,
    super.belongToCollection,
    super.budget,
    super.genreIds,
    super.homePage,
    super.imdbId,
    super.originalLanguage,
    super.originalTitle,
    super.overview,
    super.popularity,
    super.posterPath,
    super.releaseDate,
    super.revenue,
    super.runtime,
    super.status,
    super.tagline,
    super.title,
    super.video,
    super.voteAverage,
    super.voteCount,
  });

  factory MovieDetailModel.fromJson(Map<String, dynamic> json) =>
      _$MovieDetailModelFromJson(json);

  Map<String, dynamic> toJson() => _$MovieDetailModelToJson(this);

  factory MovieDetailModel.fromEntity(MoviesDetail entity) {
    return MovieDetailModel(
      id: entity.id,
      adult: entity.adult,
      backdropPath: entity.backdropPath,
      belongToCollection: entity.belongToCollection,
      budget: entity.budget,
      genreIds: entity.genreIds,
      homePage: entity.homePage,
      imdbId: entity.imdbId,
      originalLanguage: entity.originalLanguage,
      originalTitle: entity.originalTitle,
      overview: entity.overview,
      popularity: entity.popularity,
      posterPath: entity.posterPath,
      releaseDate: entity.releaseDate,
      revenue: entity.revenue,
      runtime: entity.runtime,
      status: entity.status,
      tagline: entity.tagline,
      title: entity.title,
      video: entity.video,
      voteAverage: entity.voteAverage,
      voteCount: entity.voteCount,
    );
  }
}
