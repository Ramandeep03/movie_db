import 'package:movie_db/data/entities/movie.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:movie_db/data/local/app_database.dart';

part 'movie_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class MovieModel extends Movie {
  MovieModel({
    super.adult,
    super.backdropPath,
    super.genreIds,
    required super.id,
    super.originalLanguage,
    super.originalTitle,
    super.overview,
    super.popularity,
    super.posterPath,
    super.releaseDate,
    super.title,
    super.video,
    super.voteAverage,
    super.voteCount,
  });

  factory MovieModel.fromJson(Map<String, dynamic> json) =>
      _$MovieModelFromJson(json);

  Map<String, dynamic> toJson() => _$MovieModelToJson(this);

  factory MovieModel.fromEntity(Movie movie) => MovieModel(
    id: movie.id,
    adult: movie.adult,
    backdropPath: movie.backdropPath,
    genreIds: movie.genreIds,
    originalLanguage: movie.originalLanguage,
    originalTitle: movie.originalTitle,
    overview: movie.overview,
    popularity: movie.popularity,
    posterPath: movie.posterPath,
    releaseDate: movie.releaseDate,
    title: movie.title,
    video: movie.video,
    voteAverage: movie.voteAverage,
    voteCount: movie.voteCount,
  );

  Movie toEntity() => Movie(
    id: id,
    adult: adult,
    backdropPath: backdropPath,
    genreIds: genreIds,
    originalLanguage: originalLanguage,
    originalTitle: originalTitle,
    overview: overview,
    popularity: popularity,
    posterPath: posterPath,
    title: title,
    video: video,
    voteAverage: voteAverage,
    voteCount: voteCount,
  );

  factory MovieModel.fromTable(MovieTable table) {
    return MovieModel(
      id: table.id,
      adult: table.adult,
      video: table.video,
      backdropPath: table.backdrop,
      genreIds: table.genreIds,
      originalLanguage: table.originalLanguage,
      originalTitle: table.originalTitle,
      overview: table.overview,
      popularity: table.popularity,
      posterPath: table.posterPath,
      releaseDate: table.releaseDate,
      title: table.title,
      voteAverage: table.voteAverage,
      voteCount: table.voteCount,
    );
  }

  MovieTable toTable() => MovieTable(
    adult: adult ?? false,
    genreIds: genreIds ?? [],
    id: id,
    backdrop: backdropPath,
    video: video,
    originalLanguage: originalLanguage,
    originalTitle: originalTitle,
    overview: overview,
    popularity: popularity,
    posterPath: posterPath,
    releaseDate: releaseDate,
    title: title,
    voteAverage: voteAverage,
    voteCount: voteCount,
    isFavourite: false,
  );
}
