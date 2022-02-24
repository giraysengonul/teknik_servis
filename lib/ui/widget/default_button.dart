import 'package:flutter/material.dart';
import 'package:technical_service/ui/helper/color.dart';
import 'package:technical_service/ui/helper/responsive.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton(
      {Key? key,
      this.text,
      this.press,
      this.alignment,
      required this.icon,
      this.buttonTextFont,
      this.buttonHeight = 40,
      this.marginVertical = 7,
      this.buttonFontSize = 16,
      required this.buttonWidth,
      this.buttonColor = whiteColor,
      this.buttonTextColor = whiteColor})
      : super(key: key);

  final Icon icon;
  final String? text;
  final double buttonWidth;
  final VoidCallback? press;
  final Color? buttonColor;
  final double buttonHeight;
  final Alignment? alignment;
  final double buttonFontSize;
  final double marginVertical;
  final String? buttonTextFont;
  final Color? buttonTextColor;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Container(
      width: buttonWidth,
      height: buttonHeight,
      alignment: alignment,
      padding: EdgeInsets.symmetric(horizontal: 15),
      margin: EdgeInsets.symmetric(vertical: marginVertical),
      decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: greyColor, width: 0.1)),
      child: TextButton.icon(
          icon: icon,
          onPressed: press,
          label: Text(text!,
              softWrap: false,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  color: buttonTextColor, fontFamily: buttonTextFont)),
          style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all(greyColor),
              padding:
                  MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 10)),
              textStyle: MaterialStateProperty.all(
                  TextStyle(fontSize: buttonFontSize)))),
    );
  }
}
