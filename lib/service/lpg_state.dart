import 'dart:io';
import 'dart:async';
import 'package:dio/dio.dart';
import 'package:technical_service/model/lpg_state.dart';



class LpgStateService {

  Dio dio = Dio();
  Future<LpgStateModel>  lpgStateListPost() async {

    var madeUpModel;
    var _list = <Result>[];

    var params = {'district': "kadikoy",'city':"istanbul",};

    dio = Dio(BaseOptions(
        baseUrl: "https://api.collectapi.com",
        headers: {"Authorization":"apikey 5OgwjoQJlAZCeCUrhbJJ63:5paql69AJY2JhJc87q7TA0"}));

    final response = await dio.get(
        "/gasPrice/turkeyDiesel", queryParameters: params);

    if (response.statusCode == HttpStatus.ok) {

      response.data['result'].forEach((k) => _list.add(Result.fromJson(k)));
      madeUpModel = LpgStateModel();
      madeUpModel.result = _list;

      madeUpModel.lastupdate=response.data["lastupdate"];


      return madeUpModel;

    }
    throw Exception();
  }
}