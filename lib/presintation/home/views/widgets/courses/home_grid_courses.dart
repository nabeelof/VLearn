import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vlearn_test/presintation/home/controllers/home_controller.dart';
import 'package:vlearn_test/presintation/widgets/course_box.dart';
import 'package:vlearn_test/utils/extension.dart';

class HomeGridCourses extends GetWidget<HomeController> {
  const HomeGridCourses({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => GridView.builder(
        shrinkWrap: true,
        itemCount: controller.courses.length,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 1.w(),
          mainAxisSpacing: 1.w(),
          childAspectRatio: 120 / 200,
        ),
        itemBuilder: (context, i) {
          return CourseBox(
            course: controller.courses[i],
          );
        },
      ),
    );
  }
}
