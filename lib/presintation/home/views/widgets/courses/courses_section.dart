import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vlearn_test/presintation/home/controllers/home_controller.dart';
import 'package:vlearn_test/presintation/home/views/widgets/courses/home_grid_courses.dart';
import 'package:vlearn_test/presintation/widgets/shimmers/grid_courses_shimmer.dart';

class CoursesSection extends GetWidget<HomeController> {
  const CoursesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => controller.isLoadingCourses
          ? const GridCoursesShimmer()
          : const HomeGridCourses(),
    );
  }
}
