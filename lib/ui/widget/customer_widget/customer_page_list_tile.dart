import 'package:flutter/material.dart';
import 'package:technical_service/ui/helper/color.dart';
import 'package:technical_service/model/customer_model/customer_model.dart';

ListTile customerPageListTile(
  int index,
  IconData iconData,
) {
  return ListTile(
    leading: Icon(
      iconData,
      color: primaryColor,
    ),
    title: Text(customerModelList[index].name.toString()),
  );
}
