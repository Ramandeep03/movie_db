import 'package:flutter/material.dart';
import 'package:movie_db/data/models/movie_model.dart';

class MovieTileSmall extends StatelessWidget {
  const MovieTileSmall({super.key, required this.movie});

  final MovieModel movie;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.3),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
            child: Image.network(
              "https://image.tmdb.org/t/p/w500${movie.posterPath}",
              fit: BoxFit.contain,
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                movie.originalTitle ?? "No Title",
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  overflow: TextOverflow.ellipsis,
                ),
                textAlign: TextAlign.center,
                maxLines: 2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
