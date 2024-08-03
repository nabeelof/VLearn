import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vlearn_test/utils/extension.dart';
import 'package:vlearn_test/utils/style/app_text_style.dart';

class SubscribeButton extends StatelessWidget {
  const SubscribeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 5.h(),
      width: 100.w(),
      child: ElevatedButton(
        onPressed: () async {},
        style: subscribeButtonStyle(),
        child: Center(
          child: Text(
            "Subscribe",
            style: AppTextStyle.xRegularWhite600,
          ),
        ),
      ),
    );
  }

  subscribeButtonStyle() {
    return ButtonStyle(
      elevation: MaterialStateProperty.all<double?>(null),
      shadowColor: MaterialStateProperty.all<Color>(Colors.white),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0))),
      backgroundColor: MaterialStateProperty.all<Color>(Get.theme.primaryColor),
      side: MaterialStatePropertyAll<BorderSide>(
          BorderSide(color: Get.theme.primaryColor)),
      padding: MaterialStateProperty.all<EdgeInsets>(
          EdgeInsets.symmetric(horizontal: 3.w())),
    );
  }
}
