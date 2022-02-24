import 'package:flutter/material.dart';


class OnboardPageProvider extends ChangeNotifier{
  int _currentIndex = 0;

  int get currentIndex => _currentIndex;

  onboardPressed(int index){
    _currentIndex = index;
    notifyListeners();
  }

}