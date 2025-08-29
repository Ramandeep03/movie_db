import 'package:flutter/material.dart';
import 'package:movie_db/widgets/base_shimmer.dart';

class CarouselShimmer extends StatelessWidget {
  const CarouselShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseShimmer(child: Container(height: 600));
  }
}
