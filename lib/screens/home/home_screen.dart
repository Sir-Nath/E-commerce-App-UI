import 'package:e_commerce_app_ui/components/custom_bottom_nav_bar.dart';
import 'package:e_commerce_app_ui/enum.dart';
import 'package:flutter/material.dart';

import '../home/components/body.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = '/home';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(
        selectedMenu: MenuState.home,
      ),
    );
  }
}
