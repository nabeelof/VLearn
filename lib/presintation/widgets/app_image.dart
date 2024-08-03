import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:vlearn_test/core/constants/const_image.dart';
import 'package:vlearn_test/presintation/widgets/app_place_holder.dart';
import 'package:vlearn_test/utils/extension.dart';

class AppImage extends StatelessWidget {
  final String imageUrl;
  final double? width;
  final double? height;
  final double? radius;
  final Color? borderColor;
  final BoxFit? fit;
  final bool isThereIndicator;
  final bool isCourseImage;
  final Color? color;
  final BlendMode? blendMode;

  const AppImage(
      {super.key,
      required this.imageUrl,
      this.width,
      this.height,
      this.borderColor,
      this.fit,
      this.isCourseImage = false,
      this.isThereIndicator = true,
      this.radius,
      this.color,
      this.blendMode});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: radius != 0 ? Clip.antiAliasWithSaveLayer : Clip.none,
      decoration: BoxDecoration(
          borderRadius: isCourseImage
              ? BorderRadius.only(
                  topLeft: Radius.circular(radius ?? 0),
                  topRight: Radius.circular(radius ?? 0))
              : BorderRadius.circular(radius ?? 0),
          border: borderColor != null
              ? Border.all(color: borderColor ?? Colors.transparent)
              : null),
      child: CachedNetworkImage(
        width: width,
        height: height,
        imageUrl: imageUrl,
        fit: BoxFit.cover,
        color: color,
        colorBlendMode: blendMode,
        placeholder: (context, url) => isThereIndicator
            ? AppPlaceHolder(
                heightOfImage: height ?? 10.w(), widthOfImage: width ?? 10.w())
            : const SizedBox.shrink(),
        errorWidget: (context, url, error) => Center(
            child: AppImage(
          imageUrl: ImageAssets.url2,
          width: width,
          height: height,
          fit: fit ?? BoxFit.cover,
        )),
      ),
    );
  }
}
