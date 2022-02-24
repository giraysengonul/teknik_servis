import 'package:flutter/material.dart';
import 'package:technical_service/ui/helper/color.dart';
import 'package:technical_service/ui/helper/responsive.dart';

TableRow tableRowSizedBox({required double height, required double width}) {
  return TableRow(children: [
    TableCell(
      child: SizedBox(
        width: width,
        height: height,
      ),
    ),
    TableCell(
      child: SizedBox(
        width: width,
        height: height,
      ),
    ),
  ]);
}

TableRow tableRowWidget({required String title, required String titleTwo}) {
  return TableRow(
    children: [
      Text(
        title,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
            color: primaryColor, fontSize: getProportionateScreenWidth(12.0)),
      ),
      Text(titleTwo),
    ],
  );
}

TableRow tableRowAndButton(
    {required String tableRowHead,
    required String tableRowButton,
    required Color buttonColor,
    required VoidCallback onTap}) {
  return TableRow(
    children: [
      Text(
        tableRowHead,
        style: TextStyle(
            color: blackColor,
            fontWeight: FontWeight.bold,
            fontSize: getProportionateScreenWidth(12.5)),
        overflow: TextOverflow.ellipsis,
      ),
      InkWell(
        onTap: onTap,
        child: Container(
          height: getProportionateScreenHeight(23.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: buttonColor,
          ),
          child: Center(
            child: Text(
              tableRowButton,
              style: TextStyle(
                color: whiteColor,
                fontSize: getProportionateScreenWidth(13.0),
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
      ),
    ],
  );
}
