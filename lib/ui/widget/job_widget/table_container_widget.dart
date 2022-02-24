import 'package:flutter/material.dart';
import 'package:technical_service/ui/helper/text.dart';
import 'package:technical_service/ui/helper/color.dart';
import 'package:technical_service/ui/helper/responsive.dart';
import 'package:technical_service/ui/widget/job_widget/table_widget.dart';

Padding tableContainerWidget({
  required String customer,
  required String jobDescription,
  required String detail,
}) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Container(
      width: getProportionateScreenWidth(350.0),
      height: getProportionateScreenHeight(280.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        border: Border.all(color: Colors.grey, width: 3.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Table(
              children: [
                TableRow(
                  children: [
                    Text(
                      businessInformation,
                      style: TextStyle(
                          color: primaryColor,
                          overflow: TextOverflow.ellipsis,
                          fontSize: getProportionateScreenWidth(13.0)),
                    ),
                    TableCell(
                      child: SizedBox(
                        width: 5.0,
                      ),
                    ),
                    Text(
                      options,
                      style: TextStyle(
                          color: primaryColor,
                          overflow: TextOverflow.ellipsis,
                          fontSize: getProportionateScreenWidth(13.0)),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 5.0,
            ),
            Divider(
              height: 15.0,
              color: Colors.grey,
            ),
            SizedBox(
              height: 15.0,
            ),
            Table(
              // columnWidths: const {1: FractionColumnWidth(.1)},
              children: [
                tableRowAndButton(
                    buttonColor: redColor,
                    tableRowHead: customerTableHead,
                    tableRowButton: cancel,
                    onTap: () {}),
                tableRowWidget(title: customer, titleTwo: ""),
                tableRowSizedBox(height: 5.0, width: 0),
                tableRowAndButton(
                    tableRowButton: holdOn,
                    buttonColor: orangeColor,
                    tableRowHead: jobTableDescription,
                    onTap: () {}),
                tableRowWidget(title: jobDescription, titleTwo: ""),
                tableRowSizedBox(height: 5.0, width: 0),
                tableRowAndButton(
                    tableRowHead: details,
                    tableRowButton: accept,
                    buttonColor: primaryColor,
                    onTap: () {}),
                tableRowWidget(
                  title: detail,
                  titleTwo: "",
                )
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
