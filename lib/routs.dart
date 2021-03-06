import 'package:e_commerce_app_ui/screens/cart/cart_%20screen.dart';
import 'package:e_commerce_app_ui/screens/complete_Profile/complete_profile_screen.dart';
import 'package:e_commerce_app_ui/screens/details/details_screen.dart';
import 'package:e_commerce_app_ui/screens/forgot_password/forgot_password_screen.dart';
import 'package:e_commerce_app_ui/screens/home/home_screen.dart';
import 'package:e_commerce_app_ui/screens/login_success/login_success_screen.dart';
import 'package:e_commerce_app_ui/screens/otp/otp_screen.dart';
import 'package:e_commerce_app_ui/screens/profile/profile_screen.dart';
import 'package:e_commerce_app_ui/screens/sign_in/sign_in_screen.dart';
import 'package:e_commerce_app_ui/screens/sign_up/sign_up_screen.dart';
import 'package:e_commerce_app_ui/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => const SignInScreen(),
  ForgotPasswordScreen.routeName : (context) => const ForgotPasswordScreen(),
  LoginSuccessScreen.routeName : (context) => const LoginSuccessScreen(),
  SignUpScreen.routeName : (context) => const SignUpScreen(),
  CompleteProfileScreen.routeName : (context) => CompleteProfileScreen(),
  OtpScreen.routeName : (context) => OtpScreen(),
  HomeScreen.routeName : (context) => HomeScreen(),
  DetailsScreen.routeName : (context) => DetailsScreen(),
  CartScreen.routeName : (context) => CartScreen(),
  ProfileScreen.routeName : (context) => ProfileScreen()
};