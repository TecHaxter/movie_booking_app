import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:movie_booking_app/presentation/widgets/shimmer.dart';

class AppNetworkImage extends StatelessWidget {
  final String url;
  final double? width;
  final double? height;
  final BoxFit? fit;
  const AppNetworkImage({
    super.key,
    required this.url,
    this.width,
    this.height,
    this.fit,
  });

  @override
  Widget build(BuildContext context) {
    return Image.network(
      url,
      fit: fit,
      width: width,
      height: height,
      loadingBuilder: (context, child, loadingProgress) {
        return ShimmerLoading(
          isLoading: loadingProgress != null,
          child: child,
        );
      },
      errorBuilder: (context, error, stackTrace) => const Center(
        child: Icon(Icons.error_outline),
      ),
    );
  }
}
