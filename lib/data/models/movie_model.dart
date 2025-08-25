import 'package:movie_db/data/entities/movie.dart';
import 'package:json_annotation/json_annotation.dart';

part 'movie_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
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
}
