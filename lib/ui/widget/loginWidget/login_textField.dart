import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:technical_service/ui/helper/color.dart';

TextField loginTextField({
  required String title,
  required Icon icon,
  required bool obs,
  required TextEditingController controller,
  required FilteringTextInputFormatter filter,
  required int maxLength,
}) {
  return TextField(
    maxLength: maxLength,
    controller: controller,
    inputFormatters: [
      filter,
    ],
    obscureText: obs,
    decoration: InputDecoration(
      labelText: title,
      prefixIcon: icon,
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
    ),
  );
}

TextField registerTextFieldPasswordRepeat({
  required String title,
  required Icon icon,
  required bool obs,
  required TextEditingController controller,
  required TextEditingController password,
  required FilteringTextInputFormatter filter,
  required int maxLength,
  required VoidCallback vol,
}) {
  return TextField(
    onChanged: (val) {},
    maxLength: maxLength,
    controller: controller,
    inputFormatters: [
      filter,
    ],
    obscureText: obs,
    decoration: InputDecoration(
      labelText: title,
      prefixIcon: icon,
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
    ),
  );
}

InputDecoration loginInputDecoration(IconData icons, String hinttext) {
  return InputDecoration(
    hintText: hinttext,
    prefixIcon: Icon(
      icons,
      color: primaryColor,
    ),
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
