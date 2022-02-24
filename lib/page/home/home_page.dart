import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:technical_service/page/job/job.dart';
import 'package:technical_service/page/report/report_page.dart';
import 'package:technical_service/ui/helper/text.dart';
import 'package:technical_service/ui/helper/color.dart';
import 'package:technical_service/page/profile/profile_page.dart';
import 'package:technical_service/page/customer/customer_page.dart';
import 'package:technical_service/page/home/home_details_page.dart';
import 'package:technical_service/provider/bottom_navigation_provider.dart';
import 'package:technical_service/ui/widget/customer_widget/custom_appbar.dart';
import 'package:technical_service/ui/widget/home_widget/home_drawer_widget.dart';

class HomePage extends StatefulWidget {
  static String routeName = "/HomePage";
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final snackBar = SnackBar(
    backgroundColor: primaryColor,
    content: const Text(
      welcome,
      style: TextStyle(fontSize: 20.0),
    ),
  );

  final List<Widget> _widgetOptions = <Widget>[
    HomeDetailPage(),
    CustomerPage(),
    JobPage(),
    ReportPage(),
    ProfilePage(),
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    });
  }

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<BottomNavigationProvider>(context);

    return Scaffold(
      drawer: homeDrawerWidget(context),
      backgroundColor: Colors.white,
      appBar: provider.selectedIndex == 0
          ? AppBarWidget(
              title: technicalService,
              onPressed: () {
                print("mesaj butonuna basıldı");
              },
            )
          : null,
      body: Center(child: _widgetOptions.elementAt(provider.selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        elevation: 0,
        iconSize: 30.0,
        selectedFontSize: 15.0,
        unselectedFontSize: 10.0,
        showUnselectedLabels: true,
        backgroundColor: whiteColor,
        unselectedItemColor: greyColor,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: homePage,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_pin_outlined),
            label: customer,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.whatshot_outlined),
            label: job,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assessment_outlined),
            label: reports,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: profile,
          ),
        ],
        currentIndex: provider.selectedIndex,
        selectedItemColor: primaryColor,
        onTap: (index) {
          provider.onItemTappedButton(index);
        },
      ),
    );
  }
}
