import 'package:flutter/material.dart';
import 'package:technical_service/ui/helper/text.dart';
import 'package:technical_service/ui/helper/color.dart';
import 'package:technical_service/page/home/home_page.dart';
import 'package:technical_service/ui/style/validation.dart';
import 'package:technical_service/ui/helper/responsive.dart';
import 'package:technical_service/ui/widget/default_button.dart';
import 'package:technical_service/ui/widget/customer_widget/custom_text_field.dart';

class LoginPage extends StatefulWidget {
  static String routeName = "/LoginPage";
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController textNameControllerLogin = TextEditingController();
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: SizedBox(
            width: SizeConfig.screenWidth,
            height: SizeConfig.screenHeight,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.settings_outlined,
                      color: primaryColor,
                      size: SizeConfig.screenWidth * .2,
                    ),
                    Text(
                      technicalService,
                      style: TextStyle(
                        color: primaryColor,
                        fontFamily: "primaryFont",
                        fontSize: SizeConfig.screenWidth * .1,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                RoundedInputField(
                  radius: 30,
                  icons: greyColor,
                  hintText: userName,
                  suffixClick: () {},
                  icon: Icons.person,
                  suffixIcon: Icons.check,
                  controller: textNameControllerLogin,
                  width: SizeConfig.screenWidth * 0.85,
                  textInputFormatter: userNameFormatter,
                  height: getProportionateScreenHeight(60),
                  iconSize: getProportionateScreenWidth(21),
                  fontSize: getProportionateScreenWidth(16),
                ),
                SizedBox(height: 10.0),
                RoundedInputField(
                  radius: 30,
                  icon: Icons.lock,
                  icons: greyColor,
                  hintText: password,
                  suffixClick: () {

                  },

                  suffixIcon: Icons.visibility,
                  controller: textNameControllerLogin,
                  width: SizeConfig.screenWidth * 0.85,
                  textInputFormatter: userNameFormatter,
                  height: getProportionateScreenHeight(60),
                  iconSize: getProportionateScreenWidth(21),
                  fontSize: getProportionateScreenWidth(16),
                ),
                SizedBox(
                  height: 15.0,
                ),
                DefaultButton(
                  buttonHeight: getProportionateScreenHeight(60),
                  buttonColor: primaryColor,
                  press: () {
                    Navigator.pushReplacementNamed(context, HomePage.routeName);
                  },
                  text: loginButton,
                  buttonFontSize: getProportionateScreenWidth(16),
                  icon: Icon(
                    Icons.lock_open_outlined,
                    color: whiteColor,
                    size: getProportionateScreenWidth(16),
                  ),
                  buttonWidth: getProportionateScreenWidth(320),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
