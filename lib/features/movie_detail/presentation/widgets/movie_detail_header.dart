import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:movie_db/core/constants/end_points.dart';
import 'package:movie_db/features/movie_detail/data/model/movie_detail_model.dart';
import 'package:movie_db/widgets/cached_image_widget.dart';
import 'package:movie_db/widgets/glassmorphic_container.dart';

class MovieDetailHeader extends StatelessWidget {
  final MovieDetailModel data;
  const MovieDetailHeader({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      width: double.infinity,
      child: Stack(
        children: [
          Positioned.fill(
            child: CachedImageWidget(
              url: "${EndPoints.imageUrl}${data.backdropPath}",
              width: double.infinity,
              boxFit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
              child: Container(color: Colors.black.withOpacity(0.2)),
            ),
          ),
          Center(
            child: SizedBox(
              height: 300,
              width: 220,
              child: GlassmorphicContainer(
                child: CachedImageWidget(
                  url: "${EndPoints.imageUrl}${data.posterPath}",
                  boxFit: BoxFit.cover,
                  height: 300,
                  width: 220,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
