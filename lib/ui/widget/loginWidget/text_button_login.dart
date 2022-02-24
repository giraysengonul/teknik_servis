import 'package:flutter/material.dart';
import 'package:technical_service/ui/helper/color.dart';

TextButton textButtonLogin(
    {required VoidCallback onPressed, required String title}) {
  return TextButton(onPressed: onPressed, child: Text(title,style: TextStyle(color: primaryColor),));
}
