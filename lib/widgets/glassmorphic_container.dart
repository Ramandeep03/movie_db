import 'dart:ui';
import 'package:flutter/material.dart';

class GlassmorphicContainer extends StatelessWidget {
  final double height;
  final double width;
  final Widget? child;
  final double blur;
  final double opacity;
  final BoxShape shape;
  final double borderRadius;
  final VoidCallback? onTap;

  const GlassmorphicContainer({
    super.key,
    required this.height,
    required this.width,
    this.child,
    this.blur = 10,
    this.opacity = 0.2,
    this.shape = BoxShape.rectangle,
    this.borderRadius = 20,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final container = ClipRRect(
      borderRadius: shape == BoxShape.circle
          ? BorderRadius.circular(width / 2)
          : BorderRadius.circular(borderRadius),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: blur, sigmaY: blur),
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            shape: shape,
            color: Colors.white.withOpacity(opacity),
            border: Border.all(
              color: Colors.white.withOpacity(0.3),
              width: 1.5,
            ),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.white.withOpacity(0.3),
                Colors.white.withOpacity(0.1),
              ],
            ),
          ),
          child: Center(child: child),
        ),
      ),
    );

    return onTap != null
        ? GestureDetector(onTap: onTap, child: container)
        : container;
  }
}
