import 'package:flutter/material.dart';
import 'package:technical_service/ui/helper/text.dart';
import 'package:technical_service/ui/helper/responsive.dart';
import 'package:technical_service/model/job_model/job_model.dart';
import 'package:technical_service/ui/widget/customer_widget/custom_appbar.dart';
import 'package:technical_service/ui/widget/home_widget/home_drawer_widget.dart';

class JobPage extends StatefulWidget {
  static String routeName = "/JobPage";
  const JobPage({Key? key}) : super(key: key);

  @override
  _JobPageState createState() => _JobPageState();
}

class _JobPageState extends State<JobPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBarWidget(
        title: job,
        onPressed: () {},
      ),
      drawer: homeDrawerWidget(context),
      body: SizedBox(
        width: SizeConfig.screenWidth,
        height: SizeConfig.screenHeight,
        child: ListView.builder(
            itemCount: jobContainerList.length,
            itemBuilder: (context, index) {
              return jobContainerList[index];
            }),
      ),
    );
  }
}
