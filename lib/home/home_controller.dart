import 'package:box_moving_animation/component/widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var positionLeft = 0.0.obs;
  var positionRight = 0.0.obs;

  void movePosition(String pos, BuildContext context) {
    if (pos == "Right") {
      positionLeft.value = screenWidth(context) * .9 - 100;
      positionRight.value = 0;
    } else if (pos == "Left") {
      positionLeft.value = 0;
      positionRight.value = screenWidth(context) * .9 - 100;
    }
  }
}
