import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vlearn_test/core/constants/const_image.dart';
import 'package:vlearn_test/utils/extension.dart';
import 'package:vlearn_test/utils/style/app_text_style.dart';

import '../../../../../domain/entities/home_entity.dart';

class CourseTeacher extends StatelessWidget {
  final CourseEntity course;

  const CourseTeacher({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          ImageAssets.teacher,
          width: 5.w(),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 1.3.w()),
            child: Text(
              "${course.teacherFirstName} ${course.teacherLastName}",
              style: AppTextStyle.xRegularLevelThree600,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ),
        ),
      ],
    );
  }
}
