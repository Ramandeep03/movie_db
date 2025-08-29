import 'package:flutter/material.dart';
import 'package:movie_db/config/theme/app_colors.dart';
import 'package:shimmer/shimmer.dart';

class BaseShimmer extends StatelessWidget {
  final Widget child;
  const BaseShimmer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: AppColors.textPrimary.withOpacity(0.1),
      highlightColor: AppColors.textSecondary.withOpacity(0.1),
      child: child,
    );
  }
}
