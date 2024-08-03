import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:vlearn_test/presintation/home/controllers/home_controller.dart';
import 'package:vlearn_test/presintation/home/views/widgets/courses/courses_section.dart';
import 'package:vlearn_test/presintation/home/views/widgets/slider/home_slider_section.dart';
import 'package:vlearn_test/presintation/widgets/pull_to_refresh_footer.dart';

import '../../../../utils/style/theme.dart';
import 'home_app_bar.dart';

class HomeViewBody extends GetWidget<HomeController> {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.emptyGrey,
      appBar: const HomeAppBar(),
      body: SmartRefresher(
        dragStartBehavior: DragStartBehavior.start,
        controller: controller.refreshController,
        enablePullDown: true,
        enablePullUp: true,
        onRefresh: controller.onRefreshList,
        enableTwoLevel: true,
        footer: const PullToRefreshFooter(),
        onLoading: controller.onLoadingCoursesList,
        child: const SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomeSliderSection(),
              SizedBox(height: 5),
              CoursesSection(),
            ],
          ),
        ),
      ),
    );
  }
}
