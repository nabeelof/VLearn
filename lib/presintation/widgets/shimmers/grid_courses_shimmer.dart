import 'package:flutter/material.dart';
import 'package:vlearn_test/utils/extension.dart';

import 'course_shimmer.dart';

class GridCoursesShimmer extends StatelessWidget {
  const GridCoursesShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: 6,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 2.w(),
        mainAxisSpacing: 2.w(),
        childAspectRatio: 150 / 200,
      ),
      itemBuilder: (context, i) {
        return const AppCourseShimmer(forHome: true);
      },
    );
  }

}