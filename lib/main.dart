import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:technical_service/page/home/home_page.dart';
import 'package:technical_service/page/login/login_page.dart';
import 'package:technical_service/page/lpg_state.dart';
import 'package:technical_service/page/onboard/onboard_page.dart';
import 'package:technical_service/page/splash/splash_page.dart';
import 'package:technical_service/provider/lpg_state.dart';
import 'package:technical_service/ui/helper/color.dart';
import 'package:technical_service/ui/helper/route.dart';
import 'package:technical_service/page/weather_state.dart';
import 'package:technical_service/ui/style/custom_theme.dart';
import 'package:technical_service/provider/weather_state.dart';
import 'package:technical_service/provider/onboard_provider.dart';
import 'package:technical_service/provider/bottom_navigation_provider.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => LpgStateProvider()),
        ChangeNotifierProvider(create: (_) => OnboardPageProvider()),
        ChangeNotifierProvider(create: (_) => WeatherStateProvider()),
        ChangeNotifierProvider(create: (_) => BottomNavigationProvider()),


      ],
      child: MaterialApp(
        theme: theme(),
        routes: routes,
        color: primaryColor,
        title: 'StudentAutomation',
        showSemanticsDebugger: false,
        debugShowCheckedModeBanner: false,
        initialRoute: LoginPage.routeName,

      ),
    );
  }
}
