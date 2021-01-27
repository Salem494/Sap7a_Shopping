import 'dart:core';
import 'package:flutter/cupertino.dart';


//Height
//Width

class SizeConfig {
  static MediaQueryData _mediaQueryData;

  static double screenHeight;
  static double screenWidth;
  static double defaultSize;
  static Orientation orientation;



  static void HW(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenHeight = _mediaQueryData.size.height;
    screenWidth = _mediaQueryData.size.width;
    orientation = _mediaQueryData.orientation;
  }
}
 double getHeight(double inputHeight){
  double screenHeight = SizeConfig.screenHeight;
  return (inputHeight / 812.0) * screenHeight;

 }

 double getWidth(double inputWidth){
  double screenWidth = SizeConfig.screenWidth;
  return (inputWidth / 375.0)*screenWidth;
 }


