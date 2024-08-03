import 'package:flutter/material.dart';
import 'package:vlearn_test/core/constants/const_image.dart';
import 'package:vlearn_test/utils/extension.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        SizedBox(
          width: 100.w(),
          height: 100.h(),
          child: Image.asset(ImageAssets.splashBg, fit: BoxFit.cover),
        ),
        Center(
          child: SizedBox(
            width: 30.w(),
            child: Image.asset(ImageAssets.splashLogo),
          ),
        ),
      ],
    );
  }
}
