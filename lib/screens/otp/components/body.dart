import 'package:e_commerce_app_ui/components/default_button.dart';
import 'package:e_commerce_app_ui/constants.dart';
import 'package:e_commerce_app_ui/size_config.dart';
import 'package:flutter/material.dart';

import '../otp_form.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(22)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: SizeConfig.screenHeight * 0.05,
              ),
              Text('OTP Verification',
              style: headingStyle,),
              Text('we sent your code to +234 90 5734 3593'),
              buildTimer(),
              SizedBox(
                height: SizeConfig.screenHeight * 0.15,
              ),
              OtpForm(),
              SizedBox(
                height: SizeConfig.screenHeight * 0.1,
              ),
              GestureDetector(
                onTap: (){
                  //resend otps
                },
                child: Text('Resend OTP',
                style: TextStyle(
                  decoration: TextDecoration.underline
                ),),
              )
            ],
          ),
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('This code will expire in '),
            TweenAnimationBuilder(
              tween: Tween<double>(begin: 30.0, end: 0),
              duration: Duration(seconds: 30),
              builder: (context,double value, child) => Text('0:${value.toInt()}',
                style: TextStyle(color: kPrimaryColor),),
              onEnd: (){

              },
            )
          ],
        );
  }
}
