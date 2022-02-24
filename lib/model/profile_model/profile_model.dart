import 'package:flutter/material.dart';
import 'package:technical_service/ui/helper/color.dart';

class ProfileModel {
  String name;
  Icon prefixIcon;
  IconButton suffixIcon;

  ProfileModel({
      required this.name,
      required this.prefixIcon,
      required this.suffixIcon,

  });
}

List<ProfileModel> profileModels = <ProfileModel>[
  ProfileModel(
    name: "İmza",
    prefixIcon: Icon(Icons.person_outline,color:primaryColor,),
    suffixIcon: IconButton(onPressed:(){} , icon:Icon(Icons.arrow_forward_ios_outlined)),

  ),
  ProfileModel(
      name: "Barkod",
      prefixIcon: Icon(Icons.fullscreen_outlined,color:primaryColor,),
      suffixIcon: IconButton(onPressed:(){} , icon:Icon(Icons.arrow_forward_ios_outlined)),
  ),
  ProfileModel(
      name: "Resim",
      prefixIcon: Icon(Icons.image_outlined,color:primaryColor,),
      suffixIcon:IconButton(onPressed:(){} , icon:Icon(Icons.arrow_forward_ios_outlined)),
  ),
  ProfileModel(
      name: "Fatura",
      prefixIcon: Icon(Icons.ad_units_outlined,color:primaryColor,),
      suffixIcon: IconButton(onPressed:(){} , icon:Icon(Icons.arrow_forward_ios_outlined)),
  ),
  ProfileModel(
      name: "Harita",
      prefixIcon: Icon(Icons.map_outlined,color:primaryColor,),
      suffixIcon:IconButton(onPressed:(){} , icon:Icon(Icons.arrow_forward_ios_outlined)),
  ),




];
