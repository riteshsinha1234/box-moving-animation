import 'package:flutter/material.dart';

//screen size

//SizeBox with Height
SizedBox gapH(double value) => SizedBox(height: value);

//SizeBox with Width
SizedBox gapW(double value) => SizedBox(width: value);

//it contain MediaQuery with Height
screenHeight(BuildContext context) => MediaQuery.of(context).size.height;

//it contain MediaQuery with Width
screenWidth(BuildContext context) => MediaQuery.of(context).size.width;

// Custom Text
Text customTxt(
  String text,
  double size,
  Color clr,
) {
  return Text(
    text,
    style: TextStyle(
        color: clr,
        fontSize: size,
        fontWeight: FontWeight.w500,
        fontFamily: "Roboto"),
  );
}
