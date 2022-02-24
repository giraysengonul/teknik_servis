import 'package:flutter/material.dart';
import 'package:technical_service/page/lpg_state.dart';
import 'package:technical_service/page/weather_state.dart';
import 'package:technical_service/ui/helper/color.dart';
import 'package:technical_service/ui/helper/text.dart';

Drawer homeDrawerWidget(BuildContext context) {
  return Drawer(
    backgroundColor: whiteColor,
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        DrawerHeader(
          child: Center(
            child: Row(
              children: const [
                Icon(
                  Icons.settings_outlined,
                  size: 50.0,
                  color: primaryColor,
                ),
                Text(
                  technicalService,
                  style: TextStyle(
                      color: primaryColor,
                      fontSize: 25.0,
                      fontFamily: "primaryFont"),
                ),
              ],
            ),
          ),
        ),
        listTileDrawer(
          context: context,
          title: weather,
          icon: Icons.wb_cloudy_outlined,
          onTap: () {
            Navigator.pushNamed(context, WeatherStatePage.routeName);
          },
        ),
        listTileDrawer(
          title: orders,
          context: context,
          icon: Icons.shopping_cart_outlined,
          onTap: () {
            Navigator.pushNamed(context, LpgStatePage.routeName);
          },
        ),
        listTileDrawer(
          title: images,
          context: context,
          icon: Icons.camera_alt_outlined,
          onTap: () {
            Navigator.pop(context);
          },
        ),
        listTileDrawer(
          title: exit,
          context: context,
          icon: Icons.exit_to_app_outlined,
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ],
    ),
  );
}

ListTile listTileDrawer(
    {required BuildContext context,
    required String title,
    required IconData icon,
    required VoidCallback onTap}) {
  return ListTile(
    title: Text(title),
    leading: Icon(
      icon,
      color: primaryColor,
    ),
    trailing: Icon(
      Icons.arrow_forward_ios_outlined,
      color: primaryColor,
    ),
    onTap: onTap,
  );
}
