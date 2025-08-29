part of 'get_favourite_movies_bloc.dart';

class GetFavouriteMoviesState extends Equatable {
  final ApiStatus<List<MovieModel>> favouriteMoviesStatus;

  GetFavouriteMoviesState({
    this.favouriteMoviesStatus = const ApiStatus.initial(),
  });

  @override
  List<Object?> get props => [favouriteMoviesStatus];

  GetFavouriteMoviesState copyWith({
    ApiStatus<List<MovieModel>>? favouriteMoviesStatus,
  }) {
    return GetFavouriteMoviesState(
      favouriteMoviesStatus:
          favouriteMoviesStatus ?? this.favouriteMoviesStatus,
    );
  }
}
