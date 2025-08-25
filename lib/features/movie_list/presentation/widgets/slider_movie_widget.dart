import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:movie_db/data/models/movie_model.dart';

class SliderMovieWidget extends StatelessWidget {
  const SliderMovieWidget({
    super.key,
    required this.movie,
    required this.onViewDetails,
    required this.onAddToFavourite,
  });

  final MovieModel movie;
  final Function(MovieModel p1) onViewDetails;
  final Function(MovieModel p1) onAddToFavourite;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        CachedNetworkImage(
          imageUrl: 'https://image.tmdb.org/t/p/original${movie.posterPath}',
          fit: BoxFit.cover,
        ),
        Container(
          decoration: BoxDecoration(color: Colors.black.withOpacity(0.5)),
        ),
        ImageFiltered(imageFilter: ImageFilter.blur(sigmaX: 2)),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 20,
          children: [
            Text(movie.title ?? ''),
            Text(movie.overview ?? ''),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () => onViewDetails(movie),
                  child: const Text("View Details"),
                ),
                const SizedBox(width: 16),
                OutlinedButton(
                  onPressed: () => onAddToFavourite(movie),
                  child: const Text("Add to Favourite"),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
