import 'package:flutter/material.dart';
import 'package:technical_service/ui/helper/text.dart';
import 'package:technical_service/ui/helper/color.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:technical_service/ui/helper/responsive.dart';
import 'package:technical_service/page/login/login_page.dart';
import 'package:technical_service/page/onboard/onboard_page.dart';

class SplashPage extends StatefulWidget {
  static String routeName = "/SplashPage";
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  bool? isLogging;
  late SharedPreferences sharedPreferences;

  @override
  initState() {
    // TODO: implement initState
    super.initState();
    saveSharedLoggingControl();
  }

  Future saveSharedLoggingControl() async {
    sharedPreferences = await SharedPreferences.getInstance();
    isLogging = sharedPreferences.getBool('onBoard');

    if (isLogging ?? false) {
      Future.delayed(Duration(seconds: 3), () {
        Navigator.pushReplacementNamed(context, LoginPage.routeName);
      });
    } else {
      Future.delayed(Duration(seconds: 3), () {
        Navigator.pushReplacementNamed(context, OnBoardingPage.routeName);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: SizedBox(
                width: SizeConfig.screenWidth,
                height: SizeConfig.screenHeight * .3,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.settings_outlined,
                      size: SizeConfig.screenWidth * .2,
                      color: primaryColor,
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
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                width: SizeConfig.screenWidth,
                height: SizeConfig.screenHeight * .3,
                child: Text(
                  "Can Soft",
                  style: TextStyle(
                    color: primaryColor,
                    fontFamily: "primaryFont",
                    fontSize: SizeConfig.screenWidth * .06,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
