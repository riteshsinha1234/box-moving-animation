import 'package:box_moving_animation/component/colors.dart';
import 'package:box_moving_animation/component/widget.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        gapH(20),
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: Colors.red,
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
    );
  }
}
