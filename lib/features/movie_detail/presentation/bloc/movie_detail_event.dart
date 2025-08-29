part of 'movie_detail_bloc.dart';

abstract class MovieDetailEvent {}

class GetMovieDetail extends MovieDetailEvent {
  final int movieId;

  GetMovieDetail({required this.movieId});
}

class UpdateFavoriteStatus extends MovieDetailEvent {
  final MovieDetailModel model;
  UpdateFavoriteStatus({required this.model});
}
