import 'package:flutter/material.dart';

import 'constant.dart';

ThemeData themeData(){
  return ThemeData(
    textTheme: TextTheme(
        bodyText1:TextStyle(color: KTextColor),
        bodyText2:TextStyle(color: KTextColor),
    ),
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(
      color: Colors.white,
      elevation: 0,
      brightness: Brightness.light
  ),
    iconTheme: IconThemeData(color: Colors.black)
  );
}