import 'package:flutter/material.dart';
import 'package:tokoto_market/screens/profile_screen.dart';
import 'body.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = '/home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyHome(),
      drawer:ProfileScreen(),
    );
  }
}
