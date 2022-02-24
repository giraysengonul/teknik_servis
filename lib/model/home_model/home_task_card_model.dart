import 'package:flutter/material.dart';
import 'package:technical_service/ui/helper/color.dart';
import 'package:technical_service/ui/helper/responsive.dart';
import 'package:technical_service/ui/widget/home_widget/home_task_card.dart';

class HomeTaskCardModel {
  HomeTaskCardModel({
    this.name,
    this.number,
  });

  HomeTaskCardModel.fromJson(dynamic json) {
    name = json['name'];
    number = json['number'];
  }
  String? name;
  int? number;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['number'] = number;
    return map;
  }
}

List homeTaskCardExample = [
  HomeTaskCard(
      width: getProportionateScreenWidth(60.0),
      height: getProportionateScreenWidth(90.0),
      cardColor: redColor,
      onPressed: () {},
      number: "1",
      name: "Devam Eden İşlemlerim",
      icon: Icons.all_inclusive_outlined),
  HomeTaskCard(
      width: getProportionateScreenWidth(60.0),
      height: getProportionateScreenWidth(90.0),
      cardColor: orangeColor,
      onPressed: () {},
      number: "3",
      name: "Beklemedeki İşler",
      icon: Icons.wysiwyg_outlined),
  HomeTaskCard(
      width: getProportionateScreenWidth(60.0),
      height: getProportionateScreenWidth(90.0),
      cardColor: primaryColor,
      onPressed: () {},
      number: "177",
      name: "Tamamlanan İşler",
      icon: Icons.check_circle_outline_outlined),
];
