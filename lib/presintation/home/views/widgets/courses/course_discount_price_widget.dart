import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vlearn_test/core/Constants/constants.dart';
import 'package:vlearn_test/core/constants/const_image.dart';
import 'package:vlearn_test/domain/entities/home_entity.dart';
import 'package:vlearn_test/utils/extension.dart';
import 'package:vlearn_test/utils/style/app_text_style.dart';

class CourseDiscountPriceWidget extends StatelessWidget {
  final CourseEntity course;

  const CourseDiscountPriceWidget({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          ImageAssets.discount,
          width: 5.w(),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 1.3.w()),
            child: Text(
              getPriceFormatted(
                course.priceAfterDiscount ?? course.price!,
              ),
              style: AppTextStyle.xRegularGray600,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ),
        ),
      ],
    );
  }
}
