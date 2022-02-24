// ignore_for_file: non_constant_identifier_names, avoid_types_as_parameter_names

import 'package:flutter/material.dart';
import 'package:technical_service/model/profile_model/profile_model.dart';
import 'package:technical_service/ui/helper/color.dart';
import 'package:technical_service/ui/helper/path_helper.dart';
import 'package:technical_service/ui/helper/responsive.dart';
import 'package:technical_service/ui/helper/text.dart';
import 'package:technical_service/ui/widget/customer_widget/custom_appbar.dart';
import 'package:technical_service/ui/widget/home_widget/home_drawer_widget.dart';

class ProfilePage extends StatelessWidget {
  static String routeName = "/ProfilePage";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      drawer: homeDrawerWidget(context),
      appBar: AppBarWidget(
        title: profile,
        onPressed: () {},
      ),
      body: SizedBox(
        height: SizeConfig.screenHeight,
        width: SizeConfig.screenWidth,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 4,
              child: Container(
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Center(
                      child: CircleAvatar(
                        backgroundColor: primaryColor,
                        radius: 53.0,
                        child: CircleAvatar(
                          backgroundImage: AssetImage(hakkiCan),
                          radius: 50.0,
                          child: null,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "Demo Kullanıcı",
                      style: TextStyle(
                          color: primaryColor, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 7.0,
                    ),
                    Text(
                      "Yazılım Geliştirici",
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 7.0,
                    ),
                    Text(
                      "demo@pidata.com.tr",
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: SizedBox(
                child: ListView.builder(
                    itemCount: profileModels.length,
                    itemBuilder: (BuildContext, index) {
                      return ListTile(
                        leading: profileModels[index].prefixIcon,
                        title: Text(profileModels[index].name),
                        trailing: profileModels[index].suffixIcon,
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
