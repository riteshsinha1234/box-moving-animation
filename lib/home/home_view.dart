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
          const SizedBox(height: 40),
          // This is the big Container which contain small red box.
          Container(
            height: 200,
            //Size of outer container
            width: MediaQuery.of(context).size.width * .9,
            decoration: BoxDecoration(border: Border.all(color: Colors.black)),
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
                        //define container width
                        width: 100.0,

                        //define container height
                        height: 100.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
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
                          //Function Calling for Left Direction
                          controller.movePosition("Left", context);
                        },
                  child: const Row(
                    children: [
                      Icon(Icons.arrow_circle_left_outlined),
                      SizedBox(width: 5),
                      Text('Left'),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 20),
              // use condition Statement for desiable button while moving
              // in a right diraction
              // And Obx is for making button Observable
              Obx(
                () => ElevatedButton(
                  onPressed: controller.isDisableRight.value
                      ? null
                      : () {
                          //Function Calling for Right Direction
                          controller.movePosition("Right", context);
                        },
                  child: const Row(
                    children: [
                      Text('Right'),
                      SizedBox(height: 5),
                      Icon(Icons.arrow_circle_right_outlined),
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
