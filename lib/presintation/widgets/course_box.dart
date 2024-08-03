import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:vlearn_test/core/Constants/constants.dart';
import 'package:vlearn_test/core/constants/const_image.dart';
import 'package:vlearn_test/domain/entities/home_entity.dart';
import 'package:vlearn_test/presintation/home/views/widgets/courses/course_discount_price_widget.dart';
import 'package:vlearn_test/presintation/home/views/widgets/courses/course_price_widget.dart';
import 'package:vlearn_test/presintation/home/views/widgets/courses/course_teacher.dart';
import 'package:vlearn_test/presintation/home/views/widgets/courses/subscribe_button.dart';
import 'package:vlearn_test/presintation/widgets/app_image.dart';
import 'package:vlearn_test/utils/extension.dart';
import 'package:vlearn_test/utils/style/app_text_style.dart';
import 'package:vlearn_test/utils/style/theme.dart';

import '../home/views/widgets/courses/course_price.dart';

class CourseBox extends StatelessWidget {
  final CourseEntity course;
  final Function()? onTap;

  const CourseBox({
    super.key,
    this.onTap,
    required this.course,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        elevation: 2,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          padding: EdgeInsets.all(2.w()),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 45,
                child: AppImage(
                  imageUrl: course.media![0].url!,
                  radius: 15,
                  height: 100.h(),
                  width: 100.w(),
                ),
              ),
              SizedBox(height: 1.h()),
              Expanded(
                flex: 55,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      course.name!.name,
                      style: AppTextStyle.mediumGreyBold,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 1.h()),
                    const Divider(
                        color: AppColors.borderDividerColor, height: 1),
                    SizedBox(height: 1.5.h()),
                    CourseTeacher(course: course),
                    SizedBox(height: 2.h()),
                    CoursePrice(course: course),
                    SizedBox(height: 1.h()),
                    const SubscribeButton(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
