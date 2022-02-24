import 'package:flutter/material.dart';
import 'package:technical_service/ui/helper/responsive.dart';
import 'package:technical_service/model/home_model/home_task_card_model.dart';

class HomeDetailPage extends StatefulWidget {
  static String routeName = "/HomeDetailPage";

  @override
  State<HomeDetailPage> createState() => _HomeDetailPageState();
}

class _HomeDetailPageState extends State<HomeDetailPage>
    with TickerProviderStateMixin {
  late AnimationController animated;
  @override
  void initState() {
    animated = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      CircularProgressIndicator(
        value: animated.value,
        color: Colors.white,
        strokeWidth: 10.0,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Center(
        child: ListView.builder(
            itemCount: homeTaskCardExample.length,
            itemBuilder: (context, index) {
              return homeTaskCardExample[index];
            }),
      ),
    );
  }
}
