import 'package:get/get.dart';
import 'package:vlearn_test/presintation/splash/controllers/splash_controller.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(SplashController());
  }
}
