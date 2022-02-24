import 'package:flutter/material.dart';
import 'package:technical_service/ui/helper/color.dart';

ThemeData theme() {
  return ThemeData(
    fontFamily: "primaryFont",
    scaffoldBackgroundColor: whiteColor,
    textTheme: TextTheme(
        bodyText1: TextStyle(color: greyColor, fontSize: 15),
        bodyText2: TextStyle(color: greyColor, fontSize: 15),
        subtitle1: TextStyle(color: greyColor, fontSize: 15),
        subtitle2: TextStyle(color: greyColor, fontSize: 15),
        button: TextStyle(color: greyColor, fontSize: 15)),
    primaryColor: primaryColor,
    appBarTheme: appBarTheme(),
    toggleableActiveColor: greyColor,
    unselectedWidgetColor: greyColor,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
    elevation: 0,
    color: whiteColor,
    iconTheme: IconThemeData(color: whiteColor),
  );
}
