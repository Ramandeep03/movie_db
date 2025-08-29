import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_db/core/di/dependency_injector.dart';
import 'package:movie_db/features/movie_list/presentation/bloc/get_favourite_movies_bloc/get_favourite_movies_bloc.dart';
import 'package:movie_db/features/movie_list/presentation/widgets/movie_grid_widget.dart';
import 'package:movie_db/widgets/common_scaffold.dart';

class FavouriteMoviesScreen extends StatelessWidget {
  const FavouriteMoviesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<GetFavouriteMoviesBloc>()..add(GetMovies()),
      child: BubbleBackgroundScaffold(
        title: 'Favourite Movies',
        body: BlocBuilder<GetFavouriteMoviesBloc, GetFavouriteMoviesState>(
          builder: (context, state) {
            return state.favouriteMoviesStatus.when(
              initialOrLoading: () =>
                  Center(child: CircularProgressIndicator()),
              success: (data) => MovieGridWidget(
                movies: data,
                onPop: () {
                  context.read<GetFavouriteMoviesBloc>().add(GetMovies());
                },
              ),
              failure: (error) => Center(child: Text(error)),
            );
          },
        ),
      ),
    );
  }
}
