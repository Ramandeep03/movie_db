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
        ImageFiltered(
          imageFilter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
          child: Container(color: Colors.transparent),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch, // full width
              children: [
                Text(
                  movie.title ?? '',
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () => onViewDetails(movie),
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(50), // make tall & wide
                  ),
                  child: const Text("View Details"),
                ),
                const SizedBox(height: 12),
                OutlinedButton(
                  onPressed: () => onAddToFavourite(movie),
                  style: OutlinedButton.styleFrom(
                    minimumSize: const Size.fromHeight(50), // full width
                  ),
                  child: const Text("Add to Favourite"),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
