import 'package:box_moving_animation/components/widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  // Initialized left position wiht observable
  var positionLeft = 0.0.obs;

  // Initialized Right position wiht observable
  var positionRight = 0.0.obs;

  // For Disable Left Button while moving Left Direction wiht observable
  var isDisableLeft = false.obs;

  // For Disable Right Button while moving Right Direction wiht observable
  var isDisableRight = false.obs;

  //Function for Left and Right movement of Container
  void movePosition(String pos, BuildContext context) {
    if (pos == "Right") {
      //Total Size of a Container - Small Red Box Size
      positionLeft.value = screenWidth(context) * .9 - 100;
      positionRight.value = 0;

      //Disable right button while moving "Right Diraction"
      isDisableRight.value = true;

      //Left button must true
      isDisableLeft.value = false;
    } else if (pos == "Left") {
      positionLeft.value = 0;

      //Total Size of a Container - Small Red Box Size
      positionRight.value = screenWidth(context) * .9 - 100;

      //disable left button while moving "Left Diraction"
      isDisableLeft.value = true;

      //Right button must true
      isDisableRight.value = false;
    }
  }
}
