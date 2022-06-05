
import 'package:e_commerce_app_ui/constants.dart';
import 'package:flutter/material.dart';

import '../complete_Profile/Components/body.dart';


class CompleteProfileScreen extends StatelessWidget {
  static String routeName = '/complete_profile';
  const CompleteProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up',),
      ),
      body: Body(),
    );
  }
}
