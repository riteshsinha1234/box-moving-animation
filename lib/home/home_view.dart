import 'package:box_moving_animation/component/colors.dart';
import 'package:box_moving_animation/component/widget.dart';
import 'package:box_moving_animation/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});
  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: container,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          gapH(20),
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: yellow,
              border: Border.all(),
            ),
          ),
          gapH(50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: customTxt("Right", 12, black),
              ),
              gapW(20),
              ElevatedButton(
                onPressed: () {},
                child: customTxt("Left", 12, black),
              ),
            ],
          ),
          gapH(20),
        ],
      ),
    );
  }
}
