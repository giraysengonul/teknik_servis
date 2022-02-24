import 'package:flutter/material.dart';
import 'package:technical_service/page/job/job.dart';
import 'package:technical_service/page/lpg_state.dart';
import 'package:technical_service/page/weather_state.dart';
import 'package:technical_service/page/home/home_page.dart';
import 'package:technical_service/page/login/login_page.dart';
import 'package:technical_service/page/add_document_page.dart';
import 'package:technical_service/page/report/report_page.dart';
import 'package:technical_service/page/splash/splash_page.dart';
import 'package:technical_service/page/profile/profile_page.dart';
import 'package:technical_service/page/onboard/onboard_page.dart';
import 'package:technical_service/page/register/register_page.dart';
import 'package:technical_service/page/customer/customer_page.dart';
import 'package:technical_service/page/home/home_details_page.dart';


final Map<String, WidgetBuilder> routes = {
  JobPage.routeName: (context) => JobPage(),
  HomePage.routeName: (context) => HomePage(),
  LoginPage.routeName: (context) => LoginPage(),
  ReportPage.routeName: (context) => ReportPage(),
  ProfilePage.routeName: (context) => ProfilePage(),
  LpgStatePage.routeName: (context) => LpgStatePage(),
  CustomerPage.routeName: (context) => CustomerPage(),
  RegisterPage.routeName: (context) => RegisterPage(),
  SplashPage.routeName: (context) => const SplashPage(),
  OnBoardingPage.routeName: (context) => OnBoardingPage(),
  HomeDetailPage.routeName: (context) => HomeDetailPage(),
  AddDocumentPage.routeName: (context) => AddDocumentPage(),
  WeatherStatePage.routeName: (context) => WeatherStatePage(),

};
