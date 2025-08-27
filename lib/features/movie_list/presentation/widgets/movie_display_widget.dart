import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_db/core/bloc/pagination_bloc/pagination_bloc.dart';
import 'package:movie_db/core/enums/list_display_type.dart';
import 'package:movie_db/data/models/movie_model.dart';
import 'package:movie_db/features/movie_list/presentation/widgets/movie_carousel.dart';
import 'package:movie_db/features/movie_list/presentation/widgets/movie_grid_widget.dart';
import 'package:movie_db/features/movie_list/presentation/widgets/movie_list_widget.dart';

class MovieDisplayWidget<
  TBloc extends Bloc<PaginationEvent, PaginationState<MovieModel>>
>
    extends StatelessWidget {
  final String? title;
  final ListDisplayType displayType;
  final VoidCallback? onSeeAllClicked;
  const MovieDisplayWidget({
    super.key,
    this.title,
    this.displayType = ListDisplayType.list,
    this.onSeeAllClicked,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TBloc, PaginationState<MovieModel>>(
      builder: (context, state) {
        if (state is PaginationInitialPageLoading) {
          return const Center(child: CircularProgressIndicator());
        }
        if (state is PaginationError<MovieModel>) {
          return Center(child: Text(state.error));
        }
        if (state is PaginationLoaded<MovieModel>) {
          return _getListType(state.items, context);
        }
        return const SizedBox.shrink();
      },
    );
  }

  Widget _getListType(List<MovieModel> movies, BuildContext context) {
    switch (displayType) {
      case ListDisplayType.list:
        return MovieListWidget(
          movies: movies,
          title: title ?? '',
          onSeeAllClicked: onSeeAllClicked ?? () {},
        );
      case ListDisplayType.grid:
        return MovieGridWidget(movies: movies);
      case ListDisplayType.carousel:
        return MovieCarousel(
          movies: movies,
          onViewDetails: (movie) {
            context.push('/movie-detail/${movie.id}');
          },
          onAddToFavourite: (movie) {},
        );
    }
  }
}
