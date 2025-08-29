import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:movie_db/widgets/base_shimmer.dart';

class CachedImageWidget extends StatelessWidget {
  final String url;
  final double? height;
  final double? width;
  final BoxFit boxFit;
  const CachedImageWidget({
    super.key,
    required this.url,
    this.height,
    this.width,
    this.boxFit = BoxFit.cover,
  });

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: url,
      progressIndicatorBuilder: (context, s, progess) {
        return BaseShimmer(
          child: Container(
            height: height,
            width: width,
            color: Colors.grey[200],
          ),
        );
      },
      errorWidget: (context, url, error) => Center(child: Icon(Icons.error)),
      fit: boxFit,
    );
  }
}
