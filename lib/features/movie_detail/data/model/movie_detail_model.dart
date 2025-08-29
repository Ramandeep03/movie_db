import 'package:movie_db/data/local/app_database.dart';
import 'package:movie_db/features/movie_detail/data/model/genres_model.dart';
import 'package:movie_db/features/movie_detail/domain/entity/movies_detail.dart';
import 'package:json_annotation/json_annotation.dart';

part 'movie_detail_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class MovieDetailModel extends MoviesDetail {
  @override
  final List<GenresModel>? genres;

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
    super.isFavourite,
    this.genres,
  }) : super(genres: genres);

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
      isFavourite: entity.isFavourite,
      genres: entity.genres?.map((g) => GenresModel.fromEntity(g)).toList(),
    );
  }

  MovieTable toTable() => MovieTable(
    adult: adult ?? false,
    backdrop: backdropPath,
    genreIds: genreIds ?? [],
    id: id,
    originalLanguage: originalLanguage,
    originalTitle: originalTitle,
    overview: overview,
    popularity: popularity,
    posterPath: posterPath,
    releaseDate: releaseDate,
    title: title,
    video: video,
    voteAverage: voteAverage,
    voteCount: voteCount,
    belongToCollection: belongToCollection,
    budget: budget,
    homepage: homePage,
    imdbId: imdbId,
    revenue: revenue,
    runtime: runtime,
    status: status,
    tagline: tagline,
    isFavourite: isFavourite ?? false,
  );

  factory MovieDetailModel.fromTable(
    MovieTable table,
    List<GenresModel> genres,
  ) {
    return MovieDetailModel(
      id: table.id,
      adult: table.adult,
      voteAverage: table.voteAverage,
      backdropPath: table.backdrop,
      genreIds: table.genreIds,
      originalLanguage: table.originalLanguage,
      originalTitle: table.originalTitle,
      overview: table.overview,
      popularity: table.popularity,
      posterPath: table.posterPath,
      releaseDate: table.releaseDate,
      tagline: table.tagline,
      title: table.title,
      video: table.video,
      voteCount: table.voteCount,
      belongToCollection: table.belongToCollection,
      budget: table.budget,
      homePage: table.homepage,
      imdbId: table.imdbId,
      revenue: table.revenue,
      runtime: table.runtime,
      status: table.status,
      genres: genres,
      isFavourite: table.isFavourite,
    );
  }

  MovieDetailModel copyWith({required bool isFavourite}) {
    return MovieDetailModel(
      id: id,
      isFavourite: isFavourite,
      adult: adult,
      video: video,
      voteAverage: voteAverage,
      backdropPath: backdropPath,
      genreIds: genreIds,
      originalLanguage: originalLanguage,
      originalTitle: originalTitle,
      overview: overview,
      popularity: popularity,
      posterPath: posterPath,
      releaseDate: releaseDate,
      tagline: tagline,
      title: title,
      voteCount: voteCount,
      belongToCollection: belongToCollection,
      budget: budget,
      homePage: homePage,
      imdbId: imdbId,
      revenue: revenue,
      runtime: runtime,
      status: status,
      genres: genres,
    );
  }
}
