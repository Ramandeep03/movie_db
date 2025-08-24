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
}
