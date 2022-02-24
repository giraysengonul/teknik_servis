import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:technical_service/ui/helper/color.dart';

InputDecoration registerInputDecoration(IconData icons, String hinttext) {
  return InputDecoration(
    hintText: hinttext,
    prefixIcon: Icon(icons,color: primaryColor,),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(25.0),
      borderSide: BorderSide(color: primaryColor, width: .5),
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(25.0),
      borderSide: BorderSide(
        color: primaryColor,
        width: .5,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(25.0),
      borderSide: BorderSide(
        color: primaryColor,
        width: .5,
      ),
    ),
  );
}
