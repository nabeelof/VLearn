import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vlearn_test/utils/router/app_pages.dart';
import 'package:vlearn_test/utils/style/theme.dart';

import 'core/injection.dart';
import 'utils/router/routes.dart';

Future<void> main() async {
  await init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'VLearn',
      debugShowCheckedModeBanner: false,
      theme: AppColors.lightTheme,
      getPages: pages,
      color: Colors.white,
      initialRoute: AppRoutes.splash,
    );
  }
}