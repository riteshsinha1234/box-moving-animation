import 'package:box_moving_animation/components/widget.dart';
import 'package:box_moving_animation/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../components/colors.dart';

class HomeView extends StatelessWidget {
  final HomeController controller = Get.put(HomeController());
  HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            gapH(40),
            // This is the big Container which contain small red box.
            Container(
              height: 200,
              width:
                  screenWidth(context) * .9, //Total Outer Size of a container
              decoration: BoxDecoration(border: Border.all(color: black)),
              child: Stack(
                children: <Widget>[
                  Obx(
                    () =>
                        // This AnimatedPositiond is a widget in Flutter
                        // used to create animated transitions for a
                        // widget's position within a Stack
                        AnimatedPositioned(
                      left: controller.positionLeft.value,
                      right: controller.positionRight.value,
                      top: 10,
                      duration: const Duration(milliseconds: 500),
                      child: Center(
                        child: Container(
                          color: Colors.red,
                          width: 100.0,
                          height: 100.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // call this from Widget.dart
            gapH(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // use condition Statement for desiable button while moving
                // in a left diraction
                // And Obx is for making button Observable
                Obx(
                  () => ElevatedButton(
                    onPressed: controller.isDisableLeft.value
                        ? null
                        : () {
                            controller.movePosition("Left", context);
                          },
                    child: Row(
                      children: [
                        // call this from Widget.dart
                        customTxt("Left", 12, black),
                      ],
                    ),
                  ),
                ),
                gapW(20),
                // use condition Statement for desiable button while moving
                // in a right diraction
                // And Obx is for making button Observable
                Obx(
                  () => ElevatedButton(
                    onPressed: controller.isDisableRight.value
                        ? null
                        : () {
                            controller.movePosition("Right", context);
                          },
                    child: Row(
                      children: [
                        // call this from Widget.dart
                        customTxt("Right", 12, black),
                      ],
                    ),
                  ),
                )
              ],
            ),
            gapH(30),
          ],
        ),
      ),
    );
  }
}
