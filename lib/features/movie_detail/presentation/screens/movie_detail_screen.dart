import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_db/widgets/glassmorphic_container.dart';

class MovieDetailScreen extends StatelessWidget {
  final String movieId;
  const MovieDetailScreen({super.key, required this.movieId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        scrolledUnderElevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12), // spacing from edge
            child: GlassmorphicContainer(
              height: 50,
              width: 50,
              shape: BoxShape.circle,
              child: IconButton(
                onPressed: () {
                  context.push('/search-movies');
                },
                icon: const Icon(Icons.search, size: 30, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
