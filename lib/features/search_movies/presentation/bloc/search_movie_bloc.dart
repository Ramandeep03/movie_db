import 'package:movie_db/core/bloc/pagination_bloc/pagination_bloc.dart';
import 'package:movie_db/data/models/movie_model.dart';
import 'package:movie_db/features/search_movies/domain/usecase/search_movies_usecase.dart';

class SearchMovieBloc extends PaginationBloc<MovieModel> {
  final SearchMoviesUsecase _searchMoviesUsecase;

  SearchMovieBloc(this._searchMoviesUsecase);
  @override
  Future<List<MovieModel>> fetchItems({
    required int page,
    required int limit,
    Map<String, dynamic>? filters,
  }) async {
    final response = await _searchMoviesUsecase.call(filters?['query']);
    final List<MovieModel> data = response.fold(
      (error) => [],
      (data) =>
          data.results.map((movie) => MovieModel.fromEntity(movie)).toList(),
    );
    return data;
  }
}
