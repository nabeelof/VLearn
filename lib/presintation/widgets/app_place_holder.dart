import 'package:flutter/material.dart';
import 'package:vlearn_test/utils/style/theme.dart';

class AppPlaceHolder extends StatelessWidget {
  final double widthOfImage;
  final double heightOfImage;

  const AppPlaceHolder(
      {super.key, required this.widthOfImage, required this.heightOfImage});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: widthOfImage,
        height: heightOfImage,
        color: Colors.white,
        child: Center(
          child: SizedBox(
            width: widthOfImage / 4,
            height: widthOfImage / 4,
            child: const CircularProgressIndicator(
              color: AppColors.primaryColor,
              strokeWidth: 1,
            ),
          ),
        ),
      ),
    );
  }
}
