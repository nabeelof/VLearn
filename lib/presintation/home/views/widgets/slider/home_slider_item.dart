import 'package:flutter/material.dart';
import 'package:vlearn_test/presintation/widgets/app_image.dart';
import 'package:vlearn_test/utils/extension.dart';

class HomeSliderItem extends StatelessWidget {
  const HomeSliderItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: AppImage(
          imageUrl: "https://vlearn.vroad.co/storage/app/public/2071/cover_default.png",
          width: 92.w(),
          height: 9 / 16 * (92.w()),
          fit: BoxFit.fill,
        ),
      ),
    );
  }

}