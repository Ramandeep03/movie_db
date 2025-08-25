part of 'movie_detail_bloc.dart';

abstract class MovieDetailEvent {}

class GetMovieDetail extends MovieDetailEvent {
  final int movieId;

  GetMovieDetail({required this.movieId});
}
