
import 'package:flutter/material.dart';
import '../../size_config.dart';
import 'components/body.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = "/spllash";
  @override
  Widget build(BuildContext context) {
    //SizedConfig needs to be called on the starting Screen
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
