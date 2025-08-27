import 'package:flutter/material.dart';
import 'package:movie_db/data/models/movie_model.dart';
import 'package:movie_db/features/movie_list/presentation/widgets/movie_tile_small.dart';

class MovieGridWidget extends StatelessWidget {
  final List<MovieModel> movies;
  const MovieGridWidget({super.key, required this.movies});

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
        return MovieTileSmall(movie: movies[index]);
      },
    );
  }
}
