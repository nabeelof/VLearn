import 'package:get/get.dart';
import 'package:vlearn_test/presintation/home/controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(HomeController());
  }
}
