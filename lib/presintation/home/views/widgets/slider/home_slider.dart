import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vlearn_test/presintation/home/controllers/home_controller.dart';

import 'home_slider_item.dart';

class HomeSlider extends GetWidget<HomeController> {
  const HomeSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemBuilder: (context, index, realIndex) {
        return const HomeSliderItem();
      },
      options: CarouselOptions(
        viewportFraction: 1,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        onPageChanged: (index, reason) => controller.onSliderChange(index),
        autoPlay: true,
        disableCenter: true,
        autoPlayInterval: const Duration(seconds: 6),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        scrollDirection: Axis.horizontal,
      ),
      itemCount: controller.slides.length,
    );
  }
}
