import 'package:movie_db/core/bloc/pagination_bloc/pagination_bloc.dart';
import 'package:movie_db/core/usecase/usecase.dart';
import 'package:movie_db/data/models/movie_model.dart';
import 'package:movie_db/features/movie_list/domain/usecase/get_top_rated_movies_usecase.dart';

class GetTopRatedMoviesBloc extends PaginationBloc<MovieModel> {
  final GetTopRatedMoviesUsecase _getTopRatedMoviesUsecase;

  GetTopRatedMoviesBloc(this._getTopRatedMoviesUsecase);
  @override
  Future<List<MovieModel>> fetchItems({
    required int page,
    required int limit,
    Map<String, dynamic>? filters,
  }) async {
    final response = await _getTopRatedMoviesUsecase.call(NoParams());
    final List<MovieModel> data = response.fold(
      (error) => [],
      (data) =>
          data.results.map((movie) => MovieModel.fromEntity(movie)).toList(),
    );
    return data;
  }
}
