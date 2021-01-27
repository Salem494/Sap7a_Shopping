import 'package:flutter/material.dart';
import 'package:tokoto_market/companents/body.dart';

import '../size_config.dart';

class SplashScreen extends StatelessWidget {
  static String routeName ='/splash';

  @override
  Widget build(BuildContext context) {
    SizeConfig.HW(context);
    return Scaffold(
      body: Body(),
    );
  }
}
