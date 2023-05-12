import 'package:get/get.dart';

class BottomController extends GetxController {
  var index = 0.obs;

  void changebootomitem(int item) {
    index.value = item;
  }
}
