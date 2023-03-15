// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Utils {
  static Color backgroundColor = Color.fromARGB(255, 60, 212, 192);
  static Color mainColor = Color.fromARGB(255, 247, 223, 92);

  static Text textStyle(title, double fontSize, FontWeight fontWeight) {
    return Text(
      title,
      style: TextStyle(
          fontSize: fontSize, fontWeight: fontWeight, color: Colors.white),
    );
  }

  static Text leadingTextStyle(title, double fontSize, FontWeight fontWeight) {
    return Text(
      title,
      style: TextStyle(
          fontSize: fontSize, fontWeight: fontWeight, color: Colors.black),
    );
  }

  static Row backgroundDesign(
    double height,
    double width,
    Color color,
    BorderRadius borderRadius,
    double heightC,
    double widthC,
    Color colorC,
    BorderRadius borderRadiusC,
  ) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: height,
          width: width,
          decoration: BoxDecoration(color: color, borderRadius: borderRadius),
        ),
        Container(
          height: heightC,
          width: widthC,
          decoration: BoxDecoration(color: colorC, borderRadius: borderRadiusC),
        ),
      ],
    );
  }
}
