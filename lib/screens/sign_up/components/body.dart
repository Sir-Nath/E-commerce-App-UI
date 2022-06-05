import 'package:e_commerce_app_ui/components/default_button.dart';
import 'package:e_commerce_app_ui/components/form_error.dart';
import 'package:e_commerce_app_ui/constants.dart';
import 'package:e_commerce_app_ui/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../components/custom_suffix_icon.dart';
import '../../../components/social_card.dart';
import '../sign_up_form.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: SizeConfig.screenHeight*0.02,
            ),
            Text('Register Account', style: headingStyle),
            const Text('Complete your details or continue \nwith social media',
                textAlign: TextAlign.center),
            SizedBox(
              height: SizeConfig.screenHeight*0.07,
            ),
            SignUpForm(),
            SizedBox(
              height: SizeConfig.screenHeight*0.07,
            ),
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
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            const Text('By continuing your confirm that you agree \nwith our Term and Condition',
            textAlign: TextAlign.center,)
          ],
        ),
      ),
    );
  }
}

