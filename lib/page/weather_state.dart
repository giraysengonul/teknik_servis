import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:technical_service/ui/helper/color.dart';
import 'package:technical_service/provider/weather_state.dart';




class WeatherStatePage extends StatefulWidget {
  static String routeName = "/WeatherStatePage";
  const WeatherStatePage({Key? key}) : super(key: key);

  @override
  _WeatherStatePageState createState() => _WeatherStatePageState();
}

class _WeatherStatePageState extends State<WeatherStatePage> {
  @override
  void initState() {
    context.read<WeatherStateProvider>().weatherStateRequest();
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView.builder(
          itemCount:context.read<WeatherStateProvider>().weatherStateModel.result?.length??0,
          itemBuilder: (context,index){
            return Consumer<WeatherStateProvider>(
             builder: (context,model,child)=>
              Column(
                children: [

                  Row(
                    children: [
                      Text("City : "),
                      Text(model.weatherStateModel.city.toString()),
                    ],
                  ),
                  Row(
                    children: [
                      Text("Tarih : "),
                      Text(model.weatherStateModel.result?[index].date??""),
                    ],
                  ),
                  Row(
                    children: [
                      Text("Gün : "),
                      Text(model.weatherStateModel.result?[index].day??""),
                    ],
                  ),
                  Row(
                    children: [
                      Text("Açıklama : "),
                      Text(model.weatherStateModel.result?[index].description??""),
                    ],
                  ),
                  Row(
                    children: [
                      Text("Durum : "),
                      Text(model.weatherStateModel.result?[index].status??""),
                    ],
                  ),
                  Row(
                    children: [
                      Text("En Düşük : "),
                      Text(model.weatherStateModel.result?[index].min??""),
                    ],
                  ),
                  Row(
                    children: [
                      Text("En Yüksek : "),
                      Text(model.weatherStateModel.result?[index].max??""),
                    ],
                  ),
                  Divider(
                    height: 10.0,
                    color: greyColor,
                  ),
                ],
              ),
            ) ;


          }),
    );
  }
}
