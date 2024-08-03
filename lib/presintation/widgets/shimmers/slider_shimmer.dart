import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:page_view_dot_indicator/page_view_dot_indicator.dart';
import 'package:vlearn_test/presintation/widgets/app_loading.dart';
import 'package:vlearn_test/utils/extension.dart';
import 'package:vlearn_test/utils/style/theme.dart';

class SliderShimmer extends StatelessWidget {
  const SliderShimmer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemBuilder: (context, index, realIndex) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 2.4.w()),
              child: Column(
                children: [
                  SizedBox(
                    height: 2.h(),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: AppLoading(
                        height: 18.h(),
                        width: 80.w(),
                        radius: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 1.h()),
              child: PageViewDotIndicator(
                currentItem: 0,
                count: 3,
                boxShape: BoxShape.circle,
                unselectedColor: AppColors.secondaryColor,
                selectedColor: AppColors.secondaryColor,
              ),
            ),
          ],
        );
      },
      options: CarouselOptions(
        height: 24.0.h(),
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: false,
        disableCenter: true,
        scrollPhysics: const NeverScrollableScrollPhysics(),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: false,
        scrollDirection: Axis.horizontal,
      ),
      itemCount: 5,
    );
  }
}
