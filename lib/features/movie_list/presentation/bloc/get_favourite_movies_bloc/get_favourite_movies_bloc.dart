import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_db/core/enums/api_status.dart';
import 'package:movie_db/core/usecase/usecase.dart';
import 'package:movie_db/data/models/movie_model.dart';
import 'package:movie_db/features/movie_list/domain/usecase/get_favourite_movies_usecase.dart';

part 'get_favourite_movies_event.dart';
part 'get_favourite_movies_state.dart';

class GetFavouriteMoviesBloc
    extends Bloc<GetFavouriteMoviesEvent, GetFavouriteMoviesState> {
  final GetFavouriteMoviesUsecase _getFavouriteMoviesUsecase;

  GetFavouriteMoviesBloc(super.initialState, this._getFavouriteMoviesUsecase) {
    on<GetMovies>(_getFavouriteMovies);
  }

  FutureOr<void> _getFavouriteMovies(
    GetMovies event,
    Emitter<GetFavouriteMoviesState> emit,
  ) async {
    emit(state.copyWith(favouriteMoviesStatus: ApiStatus.loading()));
    final respone = await _getFavouriteMoviesUsecase.call(NoParams());

    respone.fold(
      (error) => emit(
        state.copyWith(favouriteMoviesStatus: ApiStatus.failure(error.message)),
      ),
      (data) => emit(
        state.copyWith(
          favouriteMoviesStatus: ApiStatus.success(
            data.map((e) => MovieModel.fromEntity(e)).toList(),
          ),
        ),
      ),
    );
  }
}
