part of 'movie_detail_bloc.dart';

class MovieDetailState extends Equatable {
  final ApiStatus<MovieDetailModel> movieDetailStatus;

  const MovieDetailState({this.movieDetailStatus = const ApiStatus.initial()});

  @override
  List<Object?> get props => [movieDetailStatus];

  copyWith({ApiStatus<MovieDetailModel>? movieDetailStatus}) {
    return MovieDetailState(
      movieDetailStatus: movieDetailStatus ?? this.movieDetailStatus,
    );
  }
}
