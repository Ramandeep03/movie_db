import 'package:movie_db/data/entities/movie.dart';
import 'package:movie_db/features/movie_detail/domain/entity/genres.dart';

class MoviesDetail extends Movie {
  final String? belongToCollection;
  final int? budget;
  final String? homePage;
  final String? imdbId;
  final int? revenue;
  final int? runtime;
  final String? status;
  final String? tagline;
  final List<Genres>? genres;

  MoviesDetail({
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
    this.belongToCollection,
    this.budget,
    this.homePage,
    this.imdbId,
    this.revenue,
    this.runtime,
    this.status,
    this.tagline,
    this.genres,
  });
}
