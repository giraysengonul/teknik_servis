import 'package:flutter/material.dart';
import 'package:technical_service/ui/helper/color.dart';
import 'package:technical_service/ui/helper/responsive.dart';

class RoundedInputField extends StatelessWidget {
  final Color? icons;
  final double? width;
  final double? radius;
  final double? height;
  final IconData? icon;
  final double iconSize;
  final double fontSize;
  final String hintText;
  final bool obscureText;
  final Color borderColor;
  final double? borderWidth;
  final IconData? suffixIcon;
  final TextInputType? inputType;
  final String obscuringCharacter;
  final GestureTapCallback? suffixClick;
  final ValueChanged<String>? onChanged;
  final TextEditingController? controller;

  const RoundedInputField(
      {Key? key,
      this.icon,
      this.icons,
      this.width,
      this.height,
      this.radius,
      this.inputType,
      this.onChanged,
      this.controller,
      this.suffixIcon,
      this.borderWidth,
      this.fontSize = 16,
      this.iconSize = 20,
      required this.hintText,
      this.obscureText = false,
      required this.suffixClick,
      this.borderColor = greyColor,
      this.obscuringCharacter = "*", textInputFormatter})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      width: width,
      height: height,
      margin: EdgeInsets.symmetric(vertical: 7),
      padding: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: whiteColor,
        border: Border.all(
            color: borderColor, width: 0.01, style: BorderStyle.solid),
        borderRadius: BorderRadius.circular(radius!),
      ),
      child: Form(
        autovalidateMode: AutovalidateMode.always,
        child: TextFormField(
          onChanged: onChanged,
          obscuringCharacter: "*",
          controller: controller,
          keyboardType: inputType,
          cursorColor: primaryColor,
          textAlign: TextAlign.left,
          obscureText: obscureText,
          autovalidateMode: AutovalidateMode.always,
          style: TextStyle(fontFamily: 'secondaryFont', fontSize: fontSize),
          decoration: InputDecoration(
            icon: Icon(icon, size: iconSize, color: primaryColor),
            suffixIcon: GestureDetector(
              onTap: suffixClick,
              child: Icon(
                suffixIcon,
                color: icons,
                size: iconSize,
              ),
            ),
            fillColor: greyColor,
            hintText: hintText,
            hintStyle:
                TextStyle(fontFamily: 'secondaryFont', fontSize: fontSize),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
