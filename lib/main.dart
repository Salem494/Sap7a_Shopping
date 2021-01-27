import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tokoto_market/routes.dart';
import 'package:tokoto_market/screens/splash_screen.dart';
import 'package:tokoto_market/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MARKET APP',
      theme: themeData(),
      initialRoute: SplashScreen.routeName,
       routes: routes,
//      home: SplashScreen(),
    );
  }
}




