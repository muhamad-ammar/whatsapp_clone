import 'package:flutter/material.dart';
class Utils{

  static getScreenHeight(BuildContext context) {
    final double height = MediaQuery
        .of(context)
        .size.height;
    return height;
  }

  static getScreenWidth(BuildContext context) {
    final double width = MediaQuery
        .of(context)
        .size.width;
    return width;
  }
}