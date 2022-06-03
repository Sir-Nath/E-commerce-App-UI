import 'package:e_commerce_app_ui/screens/forgot_password/forgot_password_screen.dart';
import 'package:e_commerce_app_ui/screens/login_success/login_success_screen.dart';
import 'package:e_commerce_app_ui/screens/sign_up/sign_in_screen.dart';
import 'package:e_commerce_app_ui/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => const SignInScreen(),
  ForgotPasswordScreen.routeName : (context) => const ForgotPasswordScreen(),
  LoginSuccessScreen.routeName : (context) => const LoginSuccessScreen()
};