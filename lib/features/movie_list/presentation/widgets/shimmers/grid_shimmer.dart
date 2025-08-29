import 'package:flutter/material.dart';
import 'package:movie_db/widgets/base_shimmer.dart';

class GridShimmer extends StatelessWidget {
  const GridShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 5,
      padding: const EdgeInsets.all(20),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
        childAspectRatio: 0.53,
      ),
      itemBuilder: (context, index) {
        return BaseShimmer(child: Container());
      },
    );
  }
}
