import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vlearn_test/core/constants/const_image.dart';
import 'package:vlearn_test/utils/extension.dart';

import 'notification_icon.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      leading: SizedBox(
        width: 15.6.w(),
        height: 15.6.w(),
        child: TextButton(
          style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.w()),
              ),
              padding: EdgeInsets.zero,
          ),
          onPressed: () => {},
          child: SvgPicture.asset(
            ImageAssets.menuIcon,
            matchTextDirection: true,
            fit: BoxFit.fill,
            width: 10.w(),
            height: 10.w(),
          ),
        ),
      ),
      actions: const [
        NotificationIcon(
          notificationCount: 5,
        ),
      ],
      title: Image.asset(
        ImageAssets.vLearnIcon,
        height: 28.5.w(),
        width: 28.5.w(),
        // fit: BoxFit.fill,
      ),
      centerTitle: true,
      shadowColor: Colors.transparent,
      backgroundColor: Colors.white,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
