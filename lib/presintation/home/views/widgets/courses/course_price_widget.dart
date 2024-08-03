import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vlearn_test/core/Constants/constants.dart';
import 'package:vlearn_test/core/constants/const_image.dart';
import 'package:vlearn_test/domain/entities/home_entity.dart';
import 'package:vlearn_test/utils/extension.dart';
import 'package:vlearn_test/utils/style/app_text_style.dart';

class CoursePriceWidget extends StatelessWidget {
  final CourseEntity course;

  const CoursePriceWidget({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsetsDirectional.only(
              start: 6.3.w(),
              end: 1.3.w(),
            ),
            child: Text(
              getPriceFormatted(course.price!),
              style: AppTextStyle.regularGreyWithLine300,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ),
        ),
      ],
    );
  }
}
