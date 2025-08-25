import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_db/core/enums/api_status.dart';
import 'package:movie_db/features/movie_detail/data/model/movie_detail_model.dart';
import 'package:movie_db/features/movie_detail/domain/usecase/get_movie_detail_usecase.dart';

part 'movie_detail_state.dart';
part 'movie_detail_event.dart';

class MovieDetailBloc extends Bloc<MovieDetailEvent, MovieDetailState> {
  final GetMovieDetailUsecase _getMovieDetailUsecase;
  MovieDetailBloc(super.initialState, this._getMovieDetailUsecase) {
    on<GetMovieDetail>(_getMovieDetail);
  }

  FutureOr<void> _getMovieDetail(
    GetMovieDetail event,
    Emitter<MovieDetailState> emit,
  ) async {
    emit(state.copyWith(movieDetailStatus: ApiStatus.loading()));
    final respone = await _getMovieDetailUsecase.call(event.movieId);

    respone.fold(
      (error) => emit(
        state.copyWith(movieDetailStatus: ApiStatus.failure(error.message)),
      ),
      (data) => emit(
        state.copyWith(
          movieDetailStatus: ApiStatus.success(
            MovieDetailModel.fromEntity(data),
          ),
        ),
      ),
    );
  }
}
