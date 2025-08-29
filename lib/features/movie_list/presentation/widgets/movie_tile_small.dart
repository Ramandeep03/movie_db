import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_db/core/constants/end_points.dart';
import 'package:movie_db/data/models/movie_model.dart';
import 'package:movie_db/widgets/cached_image_widget.dart';
import 'package:movie_db/widgets/glassmorphic_container.dart';

class MovieTileSmall extends StatelessWidget {
  final VoidCallback? onPop;
  const MovieTileSmall({super.key, required this.movie, this.onPop});

  final MovieModel movie;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push('/movie-detail/${movie.id}').then((value) {
          if (onPop != null) {
            onPop!();
          }
        });
      },
      child: SizedBox(
        width: 160,
        child: GlassmorphicContainer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(12),
                ),
                child: CachedImageWidget(
                  url: "${EndPoints.imageUrl}${movie.posterPath}",
                  boxFit: BoxFit.contain,
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
        ),
      ),
    );
  }
}
