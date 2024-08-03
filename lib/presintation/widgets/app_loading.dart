import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:vlearn_test/utils/style/theme.dart';

class AppLoading extends StatelessWidget {
  final double? width;
  final double? height;
  final double? radius;
  final BoxBorder? border;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final bool? isCourse;
  final double opacity;

  const AppLoading(
      {super.key,
      this.width,
      this.height,
      this.radius,
      this.border,
      this.isCourse = false,
      this.margin,
      this.padding,
      this.opacity = 1});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: isCourse!
          ? BorderRadius.only(
              topLeft: Radius.circular(radius ?? 15),
              topRight: Radius.circular(radius ?? 15))
          : BorderRadius.circular(
              radius ?? 15,
            ),
      child: Container(
        width: width,
        height: height,
        margin: margin,
        clipBehavior: radius != null ? Clip.antiAliasWithSaveLayer : Clip.none,
        padding: padding,
        decoration: BoxDecoration(
            borderRadius: isCourse!
                ? BorderRadius.only(
                    topLeft: Radius.circular(radius ?? 15),
                    topRight: Radius.circular(radius ?? 15))
                : BorderRadius.circular(radius ?? 15),
            border: border),
        child: Shimmer.fromColors(
          baseColor: AppColors.shimmerBaseColor.withOpacity(opacity),
          highlightColor: AppColors.shimmerHighlightColor,
          enabled: true,
          child: Container(color: Theme.of(context).colorScheme.secondary),
        ),
      ),
    );
  }
}
