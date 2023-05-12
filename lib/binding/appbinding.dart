import 'package:get/get.dart';
import 'package:gofere_travel/controllers/bottomcontroller.dart';
import 'package:gofere_travel/controllers/homecontroller.dart';

class AppBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(HomeController());
    Get.put(BottomController());
  }
}
