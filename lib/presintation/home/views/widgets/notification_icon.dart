import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:vlearn_test/core/constants/const_image.dart';
import 'package:vlearn_test/presintation/home/controllers/home_controller.dart';
import 'package:vlearn_test/presintation/home/views/widgets/notification_icon_badge.dart';
import 'package:vlearn_test/utils/extension.dart';
import 'package:vlearn_test/utils/style/theme.dart';

class NotificationIcon extends GetWidget<HomeController> {
  final int notificationCount;

  const NotificationIcon({super.key, required this.notificationCount});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.6.w()),
        child: InkWell(
          onTap: () {},
          child: Stack(
            alignment: Alignment.centerRight,
            children: [
              Container(
                padding: EdgeInsets.all(2.w()),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.w()),
                    color: AppColors.iconsColor),
                child: SvgPicture.asset(
                  ImageAssets.bell,
                  height: 6.w(),
                  width: 6.w(),
                  // fit: BoxFit.fill,
                ),
              ),
              controller.isLoadingHome
                  ? const SizedBox.shrink()
                  : NotificationIconBadge(notificationCount: notificationCount)
            ],
          ),
        ),
      ),
    );
  }
}
