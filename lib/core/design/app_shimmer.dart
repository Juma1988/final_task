import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class AppShimmerImage extends StatelessWidget {
  final double width, height;

  const AppShimmerImage({super.key, required this.width, required this.height});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8), topRight: Radius.circular(8)),
            color: Colors.grey,
          ),
          width: width,
          height: height,
        ),
        enabled: true,
        period: Duration(seconds: 2),
        direction: ShimmerDirection.rtl,
        baseColor: Colors.grey.withOpacity(0.25),
        highlightColor: Colors.white);
  }
}

class AppShimmerTextTitle extends StatelessWidget {
  final double height, width;

  const AppShimmerTextTitle({super.key, this.height = 21, required this.width});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
        child: Container(
          decoration: BoxDecoration(
              color: Colors.grey, borderRadius: BorderRadius.circular(16)),
          width: width,
          height: height,
        ),
        enabled: true,
        period: Duration(seconds: 2),
        direction: ShimmerDirection.rtl,
        baseColor: Colors.grey.withOpacity(0.25),
        highlightColor: Colors.white);
  }
}

class AppShimmerText extends StatelessWidget {
  final double height, width;

  const AppShimmerText(
      {super.key, this.height = 16, this.width = double.infinity});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
        child: Container(
          decoration: BoxDecoration(
              color: Colors.grey, borderRadius: BorderRadius.circular(16)),
          width: width,
          height: height,
        ),
        enabled: true,
        period: Duration(seconds: 2),
        direction: ShimmerDirection.rtl,
        baseColor: Colors.grey.withOpacity(0.25),
        highlightColor: Colors.white);
  }
}

class AppShimmerIcon extends StatelessWidget {
  final double radius;

  const AppShimmerIcon({super.key,  this.radius = 12});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
        child: CircleAvatar(
          radius: radius,
        ),
        enabled: true,
        period: Duration(seconds: 2),
        direction: ShimmerDirection.rtl,
        baseColor: Colors.grey.withOpacity(0.25),
        highlightColor: Colors.white);
  }
}
