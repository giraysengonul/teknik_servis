import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:technical_service/ui/helper/text.dart';
import 'package:technical_service/ui/helper/color.dart';
import 'package:technical_service/model/report_model/report_model.dart';
import 'package:technical_service/ui/widget/customer_widget/custom_appbar.dart';
import 'package:technical_service/ui/widget/home_widget/home_drawer_widget.dart';

class ReportPage extends StatelessWidget {
  static String routeName = "/ReportPage";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(onPressed: (){},title: technicalService,),
      drawer: homeDrawerWidget(context),
      body: Container(
        child: Center(
          child: PieChart(
            colorList:const [
              redColor,
              orangeColor,
              primaryColor
            ],
            dataMap: dataMap,
            chartRadius: MediaQuery.of(context).size.width / 1.7,
            legendOptions: LegendOptions(
              legendPosition: LegendPosition.bottom,
            ),
            chartValuesOptions: ChartValuesOptions(
              showChartValuesInPercentage: true,
            ),
          ),
        ),
      ),
    );
  }
}
