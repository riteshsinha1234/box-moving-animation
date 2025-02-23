import 'package:box_moving_animation/component/colors.dart';
import 'package:box_moving_animation/component/widget.dart';
import 'package:box_moving_animation/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  final HomeController controller = Get.put(HomeController());
  HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          gapH(40),
          Container(
            height: 200,
            width: screenWidth(context) * .9,
            decoration: BoxDecoration(border: Border.all(color: black)),
            child: Stack(
              children: <Widget>[
                Obx(
                  () => AnimatedPositioned(
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
          gapH(20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Positioned(
                bottom: 60,
                left: 230,
                child: ElevatedButton(
                  onPressed: () {
                    controller.movePosition("Left", context);
                  },
                  child: customTxt("Left", 12, black),
                ),
              ),
              gapW(20),
              Positioned(
                bottom: 60,
                left: 30,
                child: ElevatedButton(
                  onPressed: () {
                    controller.movePosition("Right", context);
                  },
                  child: customTxt("Right", 12, black),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
