import 'package:e_commerce_app_ui/screens/forgot_password/forgot_password_screen.dart';
import 'package:e_commerce_app_ui/screens/sign_up/sign_in_screen.dart';
import 'package:e_commerce_app_ui/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName : (context) => ForgotPasswordScreen()
};