import 'dart:io';
import 'dart:async';
import 'package:dio/dio.dart';
import 'package:technical_service/model/weather_state.dart';


class WeatherStateService {

  Dio dio = Dio();
  Future<WeatherStateModel>  weatherStateListPost() async {

    var madeUpModel;
    var _list = <Result>[];

    var params = {'data.lang': "tr",'data.city':"ankara",};

    dio = Dio(BaseOptions(
        baseUrl: "https://api.collectapi.com",
        headers: {"Authorization":"apikey 1BMDWC4Kcphyg5ZpFlgHLj:0OssvamU8PaW7eFFoHMpf0" }));

    final response = await dio.get(
        "/weather/getWeather", queryParameters: params);

      if (response.statusCode == HttpStatus.ok) {

          response.data['result'].forEach((k) => _list.add(Result.fromJson(k)));
          madeUpModel = WeatherStateModel();
          madeUpModel.result = _list;

          madeUpModel.city=response.data["city"];


      return madeUpModel;

    }
    throw Exception();
  }
}