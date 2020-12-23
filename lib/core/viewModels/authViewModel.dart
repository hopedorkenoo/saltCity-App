import 'package:flutter/material.dart';
import 'package:saltcity_app/core/viewModels/baseModel.dart';

class AuthViewModel extends BaseModel {
  int _pageState = 0;
  int get pageState => _pageState;
  double _GetStartedOffset = 0;
  double get getStartedOffset => _GetStartedOffset;
  double _borderRadius = 20;

  double windowHeight;
  double windowWidth;

  double firstFormOffset = 0;
  double secondFormOffset = 0;

  double signUpHeight = 0;
  double loginHeight = 0;
  double signupWidth = 0;

  double signupOpacity = 1;
  double signupShift = 0;

  setPageState(int pageState) {
    _pageState = pageState;
    switch (pageState) {
      case 0:
        signupOpacity = 1;
        signUpHeight = 0;
        _GetStartedOffset = 0;
        loginHeight = 0;
        signupWidth = windowWidth;
        signupShift = 0;
        firstFormOffset = 0;
        break;
      case 1:
        signUpHeight = windowHeight * 0.30;
        signupOpacity = 1;
        signupWidth = windowWidth;
        loginHeight = windowHeight;
        _GetStartedOffset = windowHeight;
        signupShift = 0;
        firstFormOffset = 0;
        secondFormOffset = windowWidth;
        print("done");
        break;
      case 3:
        firstFormOffset = -windowWidth;
        secondFormOffset = 0;
        signUpHeight = windowHeight * 0.30;
        break;
      case 2:
        signUpHeight = windowHeight * 0.27;
        loginHeight = windowHeight * 0.28;
        signupWidth = windowWidth - 40;
        _GetStartedOffset = windowHeight;
        signupOpacity = 0.7;
        signupShift = 20;
        break;
    }
    notifyListeners();
  }
}