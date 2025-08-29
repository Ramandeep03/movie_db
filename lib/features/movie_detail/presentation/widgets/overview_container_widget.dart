import 'package:flutter/material.dart';
import 'package:movie_db/features/movie_detail/data/model/movie_detail_model.dart';
import 'package:movie_db/widgets/glassmorphic_container.dart';

class OverviewContainerWidget extends StatelessWidget {
  final MovieDetailModel data;
  const OverviewContainerWidget({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return GlassmorphicContainer(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 10,
        children: [
          Text(
            'Overview',
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Text(
            data.overview ?? '',
            style: TextStyle(
              fontSize: 14,
              height: 1.5,
              color: Colors.white.withOpacity(0.9),
            ),
          ),
          if (data.genres != null && data.genres!.isNotEmpty) ...[
            Text(
              'Genres',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: data.genres!
                  .map(
                    (genre) => Chip(
                      label: Text(
                        genre.name,
                        style: const TextStyle(color: Colors.white),
                      ),
                      backgroundColor: Colors.white.withOpacity(0.2),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ],
          Text(
            'Release Date',
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Text(
            data.releaseDate ?? '',
            style: TextStyle(
              fontSize: 14,
              height: 1.5,
              color: Colors.white.withOpacity(0.9),
            ),
          ),
          Text(
            'Duration',
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Text(
            "${data.runtime} min",
            style: TextStyle(
              fontSize: 14,
              height: 1.5,
              color: Colors.white.withOpacity(0.9),
            ),
          ),
        ],
      ),
    );
  }
}
