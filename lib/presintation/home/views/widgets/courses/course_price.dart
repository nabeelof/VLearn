import 'package:flutter/material.dart';
import 'package:vlearn_test/presintation/home/views/widgets/courses/course_discount_price_widget.dart';

import '../../../../../domain/entities/home_entity.dart';
import 'course_price_widget.dart';

class CoursePrice extends StatelessWidget {
  final CourseEntity course;

  const CoursePrice({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CourseDiscountPriceWidget(course: course),
          course.discountPercentage != null && course.discountPercentage != "0"
              ? CoursePriceWidget(course: course)
              : const SizedBox(),
        ],
      ),
    );
  }
}
