import 'package:flutter/material.dart';

class NavIndex with ChangeNotifier {
  int _currentIndex = 0;
  bool _isSwitch = false;
  PageController controller = PageController();
  int get currentIndex => _currentIndex;
  bool get isSwitch => _isSwitch;

  void setIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }

  void setIsSwitch(bool isIt){
    _isSwitch = isIt;
    if(isIt == true){
      _currentIndex = 3;
      controller.jumpToPage(3);
    }else{
      _currentIndex = 4;
      controller.jumpToPage(4);
    }

    notifyListeners();
  }
}