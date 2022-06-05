import 'package:e_commerce_app_ui/components/form_error.dart';
import 'package:e_commerce_app_ui/constants.dart';
import 'package:e_commerce_app_ui/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../components/custom_suffix_icon.dart';
import '../../../components/default_button.dart';
import '../complete_profile_form.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: SizeConfig.screenHeight*0.02,
              ),
              Text('Complete Profile',
              style: headingStyle,),
              const Text('Complete your details or continue \nwith social media',
              textAlign: TextAlign.center,),
              SizedBox(
                height: SizeConfig.screenHeight*0.05,
              ),
              CompleteProfileForm(),
              SizedBox(
                height: getProportionateScreenHeight(30),
              ),
              Text('By continuing your confirm that you agree \n with our Terms and Contidion',
                textAlign: TextAlign.center,)
            ],
          ),
        ),
      ),
    );
  }
}

