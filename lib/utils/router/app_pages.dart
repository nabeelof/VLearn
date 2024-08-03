import 'package:get/get.dart';
import 'package:vlearn_test/presintation/home/controllers/home_binding.dart';
import 'package:vlearn_test/presintation/home/views/home_view.dart';
import 'package:vlearn_test/presintation/splash/controllers/splash_binding.dart';
import 'package:vlearn_test/presintation/splash/views/splash_view.dart';
import 'package:vlearn_test/utils/router/routes.dart';

List<GetPage> pages = <GetPage>[
  GetPage(
      name: AppRoutes.splash,
      page: () => const SplashView(),
      binding: SplashBinding()),
  GetPage(
      name: AppRoutes.home,
      page: () => const HomeView(),
      binding: HomeBinding()),
];
