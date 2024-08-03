import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:page_view_dot_indicator/page_view_dot_indicator.dart';
import 'package:vlearn_test/presintation/home/controllers/home_controller.dart';
import 'package:vlearn_test/utils/extension.dart';

class SliderDotIndicator extends GetWidget<HomeController> {
  const SliderDotIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() => Padding(
      padding: EdgeInsets.symmetric(vertical: 1.h()),
      child: PageViewDotIndicator(
        currentItem: controller.sliderIndex,
        count: controller.slides.length,
        boxShape: BoxShape.circle,
        unselectedColor: Colors.grey,
        selectedColor: Get.theme.primaryColor,
      ),
    ));
  }

}