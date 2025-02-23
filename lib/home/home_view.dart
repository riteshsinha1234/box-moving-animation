import 'package:box_moving_animation/component/colors.dart';
import 'package:box_moving_animation/component/widget.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // ignore: non_constant_identifier_names
  double pos_l = 0;
  // ignore: non_constant_identifier_names
  double pos_r = 0;
  void _movewidget(String pos) {
    setState(() {
      if (pos == "Right") {
        pos_l = screenWidth(context) * .9 - 100;
        pos_r = 0;
      } else if (pos == "Left") {
        pos_l = 0;
        pos_r = screenWidth(context) * .9 - 100;
      }
    });
  }

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
                AnimatedPositioned(
                  left: pos_l,
                  right: pos_r,
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
                    _movewidget("Left");
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
                    _movewidget("Right");
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
