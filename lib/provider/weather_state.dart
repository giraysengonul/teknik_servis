import 'package:flutter/cupertino.dart';
import 'package:technical_service/model/weather_state.dart';
import 'package:technical_service/service/weather_state.dart';

class WeatherStateProvider extends ChangeNotifier {
  WeatherStateModel weatherStateModel = WeatherStateModel();
  WeatherStateService weatherStateService = WeatherStateService();

  weatherStateRequest() async {
    weatherStateService.weatherStateListPost().then((value) => {
          weatherStateModel.city = value.city,
          weatherStateModel.result = value.result,
          notifyListeners()
        });
  }
}
