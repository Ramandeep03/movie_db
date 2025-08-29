import 'package:flutter/material.dart';
import 'package:movie_db/features/movie_detail/data/model/movie_detail_model.dart';
import 'package:movie_db/widgets/glassmorphic_container.dart';

class DetailTitleWidget extends StatelessWidget {
  final MovieDetailModel data;
  const DetailTitleWidget({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 30,
      children: [
        Expanded(
          child: Text(
            data.title ?? '',
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              shadows: [
                Shadow(
                  offset: Offset(1, 1),
                  blurRadius: 4,
                  color: Colors.black54,
                ),
              ],
            ),
          ),
        ),
        GlassmorphicContainer(
          borderRadius: 30,
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Row(
            spacing: 10,
            children: [
              Icon(Icons.star, size: 16),
              Text(data.voteAverage!.toStringAsFixed(2)),
            ],
          ),
        ),
      ],
    );
  }
}
