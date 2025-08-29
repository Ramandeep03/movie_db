import 'package:flutter/material.dart';
import 'package:movie_db/widgets/base_shimmer.dart';

class ListShimmer extends StatelessWidget {
  const ListShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: double.infinity,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return BaseShimmer(
            child: Container(
              width: 160,
              height: 300,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          );
        },
        separatorBuilder: (context, index) => const SizedBox(width: 16),
      ),
    );
  }
}
