import 'package:e_commerce_app_ui/constants.dart';
import 'package:e_commerce_app_ui/routs.dart';
import 'package:e_commerce_app_ui/screens/profile/profile_screen.dart';
import 'package:e_commerce_app_ui/screens/splash/splash_screen.dart';
import 'package:e_commerce_app_ui/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      //home: SplashScreen(),
        initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}

