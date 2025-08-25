import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:movie_db/data/models/movie_model.dart';
import 'package:movie_db/features/movie_list/presentation/widgets/slider_movie_widget.dart';

class MovieCarousel extends StatelessWidget {
  final List<MovieModel> movies;
  final Function(MovieModel) onViewDetails;
  final Function(MovieModel) onAddToFavourite;

  const MovieCarousel({
    super.key,
    required this.movies,
    required this.onViewDetails,
    required this.onAddToFavourite,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      options: CarouselOptions(
        height: 600,
        viewportFraction: 1.0,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 5),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.easeInOut,
        enableInfiniteScroll: true,
        scrollPhysics: const NeverScrollableScrollPhysics(),
      ),
      itemCount: movies.length,
      itemBuilder: (context, index, _) {
        final movie = movies[index];
        return SliderMovieWidget(
          movie: movie,
          onViewDetails: onViewDetails,
          onAddToFavourite: onAddToFavourite,
        );
      },
    );
  }
}
