import 'package:movie_db/core/bloc/pagination_bloc/pagination_bloc.dart';
import 'package:movie_db/data/models/movie_model.dart';
import 'package:movie_db/features/movie_list/domain/usecase/get_now_playing_movies_usecase.dart';

class GetNowPlayingMoviesBloc extends PaginationBloc<MovieModel> {
  final GetNowPlayingMoviesUsecase _getNowPlayingMoviesUsecase;

  GetNowPlayingMoviesBloc(this._getNowPlayingMoviesUsecase);
  @override
  Future<List<MovieModel>> fetchItems({
    required int page,
    required int limit,
    Map<String, dynamic>? filters,
  }) async {
    final response = await _getNowPlayingMoviesUsecase.call(
      filters?['startDate'],
    );
    final List<MovieModel> data = response.fold(
      (error) => [],
      (data) =>
          data.results.map((movie) => MovieModel.fromEntity(movie)).toList(),
    );
    return data;
  }
}
