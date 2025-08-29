import 'package:flutter/material.dart';
import 'package:movie_db/data/models/movie_model.dart';
import 'package:movie_db/features/movie_list/presentation/widgets/movie_tile_small.dart';
import 'package:movie_db/widgets/empty_list_widget.dart';

class MovieGridWidget extends StatelessWidget {
  final List<MovieModel> movies;
  final VoidCallback? onPop;
  const MovieGridWidget({super.key, required this.movies, this.onPop});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: movies.length,
      padding: const EdgeInsets.all(20),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
        childAspectRatio: 0.53,
      ),
      itemBuilder: (context, index) {
        if (movies.isEmpty) {
          return EmptyListWidget();
        }
        return MovieTileSmall(movie: movies[index], onPop: onPop);
      },
    );
  }
}
