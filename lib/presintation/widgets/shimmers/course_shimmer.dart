import 'package:flutter/material.dart';
import 'package:vlearn_test/utils/extension.dart';

import '../app_loading.dart';

class AppCourseShimmer extends StatelessWidget {
  final bool? forHome;

  const AppCourseShimmer({super.key, this.forHome = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2.w()),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Expanded(
            flex: 45,
            child: Row(
              children: [
                Expanded(
                  child: AppLoading(
                    radius: 15,
                    height: 100.h(),
                    width: 100.w(),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 1.h()),
          Expanded(
            flex: 55,
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: AppLoading(
                        height: 3.h(),
                        radius: 16,
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
                Expanded(child: SizedBox(height: 1.h())),
                Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: AppLoading(
                        height: 3.h(),
                        radius: 16,
                      ),
                    ),
                    const Spacer(),
                    Expanded(
                      flex: 2,
                      child: AppLoading(
                        height: 3.h(),
                        radius: 16,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 1.h()),
                AppLoading(
                  width: 100.w(),
                  height: 3.h(),
                  radius: 16,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
