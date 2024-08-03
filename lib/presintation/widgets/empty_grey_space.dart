import 'package:flutter/material.dart';
import 'package:vlearn_test/utils/extension.dart';
import 'package:vlearn_test/utils/style/theme.dart';

class EmptyGreySpace extends StatelessWidget {
  final double height;

  const EmptyGreySpace({super.key, this.height = 1});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height.h(),
      width: 100.w(),
      child: Container(color: AppColors.emptyGrey),
    );
  }
}
