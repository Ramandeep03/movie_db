import 'package:movie_db/data/models/base_response_model.dart';
import 'package:movie_db/data/models/movie_model.dart';
import 'package:movie_db/features/movie_detail/data/model/genres_model.dart';
import 'package:movie_db/features/movie_detail/data/model/video_model.dart';
import 'package:movie_db/features/movie_detail/domain/entity/movies_detail.dart';
import 'package:json_annotation/json_annotation.dart';

part 'movie_detail_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class MovieDetailModel extends MoviesDetail {
  @override
  final List<GenresModel>? genres;

  @override
  final BaseResponseModel<List<VideoModel>>? videos;

  @override
  final BaseResponseModel<List<MovieModel>>? similar;

  @override
  final BaseResponseModel<List<MovieModel>>? recommendations;
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
    this.genres,
    this.recommendations,
    this.similar,
    this.videos,
  }) : super(
         genres: genres,
         recommendations: recommendations,
         similar: similar,
         videos: videos,
       );

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
      genres: entity.genres?.map((g) => GenresModel.fromEntity(g)).toList(),
      videos: entity.videos != null
          ? BaseResponseModel<List<VideoModel>>(
              page: entity.videos!.page,
              results: entity.videos!.results
                  .map((v) => VideoModel.fromEntity(v))
                  .toList(),
              totalPages: entity.videos!.totalPages,
              totalResults: entity.videos!.totalResults,
            )
          : null,
    );
  }
}
