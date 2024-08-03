import 'package:flutter/material.dart';
import 'package:vlearn_test/utils/extension.dart';

class NotificationIconBadge extends StatelessWidget {
  final int notificationCount;

  const NotificationIconBadge({super.key, required this.notificationCount});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 5.w(), left: 2.3.w()),
          child: Visibility(
            visible: notificationCount != 0,
            child: Container(
              padding: const EdgeInsets.only(left: 5, right: 5, bottom: 2),
              height: 5.w(),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  shape: BoxShape.rectangle,
                  border: Border.all(color: Colors.white, width: 1),
                  color: Colors.red),
              child: Center(
                child: Visibility(
                  visible: notificationCount != 0,
                  child: Text(
                    "$notificationCount",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 3.w(),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
