import 'package:e_commerce_app_ui/components/default_button.dart';
import 'package:e_commerce_app_ui/constants.dart';
import 'package:e_commerce_app_ui/components/social_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../components/custom_suffix_icon.dart';
import '../../../components/form_error.dart';
import '../../../components/no_account_text.dart';
import '../../../size_config.dart';
import '../../forgot_password/forgot_password_screen.dart';
import '../sign_form.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                Text(
                  "Welcome Back",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(28),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  "Sign in with your email and password  \nor continue with social media",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                const SignForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialCard(
                      icons: "assets/icons/google-icon.svg",
                      press: () {},
                    ),
                    SocialCard(
                      icons: "assets/icons/facebook-2.svg",
                      press: () {},
                    ),
                    SocialCard(
                      icons: "assets/icons/twitter.svg",
                      press: () {},
                    ),
                    // NoAccountText(),
                  ],
                ),
                SizedBox(height: getProportionateScreenHeight(20)),
                const NoAccountText()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

