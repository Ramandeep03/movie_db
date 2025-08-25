import 'package:movie_db/core/bloc/pagination_bloc/pagination_bloc.dart';
import 'package:movie_db/data/models/movie_model.dart';
import 'package:movie_db/features/movie_list/domain/usecase/get_upcoming_movies_usecase.dart';

class GetUpcomingMoviesBloc extends PaginationBloc<MovieModel> {
  final GetUpcomingMoviesUsecase _getUpcomingMoviesUsecase;

  GetUpcomingMoviesBloc(this._getUpcomingMoviesUsecase);
  @override
  Future<List<MovieModel>> fetchItems({
    required int page,
    required int limit,
    Map<String, dynamic>? filters,
  }) async {
    final response = await _getUpcomingMoviesUsecase.call(
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
