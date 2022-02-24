import 'package:flutter/material.dart';
import 'package:technical_service/ui/helper/color.dart';

class OnBoardModel {
  String img;
  String text;
  String desc;
  Color bg;
  Color button;

  OnBoardModel({
    required this.img,
    required this.text,
    required this.desc,
    required this.bg,
    required this.button,
  });
}

List<OnBoardModel> screens = <OnBoardModel>[
  OnBoardModel(
    img: 'assets/image/onboardScreen0.jpeg',
    text: "Teknik Servis",
    desc: "Servis kaydı oluşturabilir\n süreçleri takip edebilirsin",
    bg: whiteColor,
    button: secondaryColor,
  ),
  OnBoardModel(
    img: 'assets/image/onboardScreen1.jpeg',
    text: "Teknik Servis",
    desc: "Müşteri taleplerini görebilir\n anında müdahale edebilirsin",
    bg: secondaryColor,
    button: whiteColor,
  ),
  OnBoardModel(
    img: 'assets/image/onboardScreen2.jpeg',
    text: "Teknik Servis",
    desc: "Servis uygulamamız ile stok\n yönetimi artık çok kolay",
    bg: whiteColor,
    button: secondaryColor,
  ),
];
