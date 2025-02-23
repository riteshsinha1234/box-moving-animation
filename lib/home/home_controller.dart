import 'package:get/get.dart';

class HomeController extends GetxController {
  var isMoved = 0.0.obs;

  void moveLeft() {
    if (isMoved.value > 0) {
      isMoved.value -= 50;
    }
  }

  void moveRight() {
    if (isMoved.value < 940) {
      isMoved.value += 50;
    }
  }
}
