import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:technical_service/ui/helper/text.dart';
import 'package:technical_service/ui/helper/color.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:technical_service/ui/helper/responsive.dart';
import 'package:technical_service/ui/style/text_primary.dart';
import 'package:technical_service/page/login/login_page.dart';
import 'package:technical_service/ui/style/text_secondary.dart';
import 'package:technical_service/ui/widget/default_button.dart';
import 'package:technical_service/provider/onboard_provider.dart';
import 'package:technical_service/model/onboard_model/onboard_model.dart';

class OnBoardingPage extends StatefulWidget {
  static String routeName = "/OnBoardingPage";
  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  int currentIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  _sharedSet() async {
    bool isViewed = true;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('onBoard', isViewed);
  }

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<OnboardPageProvider>(context);
    SizeConfig().init(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        child: PageView.builder(
            itemCount: screens.length,
            controller: _pageController,
            physics: NeverScrollableScrollPhysics(),
            onPageChanged: (int index) {
              provider.onboardPressed(index);
            },
            itemBuilder: (_, index) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    screens[index].text,
                    textAlign: TextAlign.center,
                    style: textStylePrimary(
                      SizeConfig.screenWidth * .1,
                    ),
                  ),
                  Text(
                    screens[index].desc,
                    textAlign: TextAlign.center,
                    style: textStyleSecondary(SizeConfig.screenWidth * .06),
                  ),
                  Container(
                    height: SizeConfig.screenHeight * .4,
                    width: SizeConfig.screenWidth * .7,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage(screens[index].img),
                    )),
                  ),
                  SizedBox(
                    height: 15.0,
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: screens.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 8,
                              color: primaryColor,
                              width: provider.currentIndex == index ? 25 : 8,
                              margin: EdgeInsets.symmetric(horizontal: 3.0),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                  DefaultButton(
                      text: onboardButton,
                      buttonColor: primaryColor,
                      buttonHeight: getProportionateScreenHeight(60),
                      press: () async {
                        if (index == screens.length - 1) {
                          await _sharedSet();
                          Navigator.pushNamed(context, LoginPage.routeName);
                        }

                        _pageController.nextPage(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.bounceIn,
                        );
                      },
                      icon: Icon(
                        Icons.navigate_next_outlined,
                        color: whiteColor,
                        size: getProportionateScreenWidth(16),
                      ),
                      buttonWidth: getProportionateScreenWidth(320))
                ],
              );
            }),
      ),
    );
  }
}
