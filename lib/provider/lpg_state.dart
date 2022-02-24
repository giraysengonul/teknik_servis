import 'package:flutter/cupertino.dart';
import 'package:technical_service/model/lpg_state.dart';
import 'package:technical_service/service/lpg_state.dart';

class LpgStateProvider extends ChangeNotifier {
  LpgStateModel lpgStateModel = LpgStateModel();
  LpgStateService lpgStateService = LpgStateService();

  lpgStateRequest() async {
    lpgStateService.lpgStateListPost().then((value) => {
          lpgStateModel.lastupdate = value.lastupdate,
          lpgStateModel.result = value.result,
          notifyListeners()
        });
  }
}
