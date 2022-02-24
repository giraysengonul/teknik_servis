import 'package:flutter/material.dart';
import 'package:technical_service/ui/helper/color.dart';

TextStyle textStyleSecondary(double fontSize) {
  return TextStyle(
      fontSize:fontSize,
      color: primaryColor,
      fontFamily: 'primaryFont',

      fontWeight: FontWeight.bold);
}