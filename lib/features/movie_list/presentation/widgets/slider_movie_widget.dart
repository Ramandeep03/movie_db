import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:movie_db/core/constants/end_points.dart';
import 'package:movie_db/data/models/movie_model.dart';
import 'package:movie_db/widgets/cached_image_widget.dart';

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
        CachedImageWidget(
          url: '${EndPoints.imageUrl}${movie.posterPath}',
          boxFit: BoxFit.cover,
        ),
        Container(
          decoration: BoxDecoration(color: Colors.black.withOpacity(0.4)),
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
              spacing: 16,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
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
                ElevatedButton(
                  onPressed: () => onViewDetails(movie),
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(50),
                  ),
                  child: const Text("View Details"),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
