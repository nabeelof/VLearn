import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vlearn_test/presintation/home/controllers/home_controller.dart';
import 'package:vlearn_test/presintation/home/views/widgets/slider/home_slider.dart';
import 'package:vlearn_test/presintation/home/views/widgets/slider/slider_dot_indicator.dart';
import 'package:vlearn_test/presintation/widgets/shimmers/slider_shimmer.dart';

class HomeSliderSection extends GetWidget<HomeController> {
  const HomeSliderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => controller.isLoadingSlides
          ? const SliderShimmer()
          : controller.slides.isEmpty
              ? const SizedBox()
              : const Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    HomeSlider(),
                    SliderDotIndicator(),
                  ],
                ),
    );
  }
}
