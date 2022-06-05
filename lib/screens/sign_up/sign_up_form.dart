import 'package:e_commerce_app_ui/screens/complete_Profile/complete_profile_screen.dart';
import 'package:flutter/material.dart';

import '../../components/custom_suffix_icon.dart';
import '../../components/default_button.dart';
import '../../components/form_error.dart';
import '../../constants.dart';
import '../../size_config.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  late String email;
  late String password;
  late String confirm_password;
  late List<String> errors = [];
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding:
        EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: Column(
          children: [
            buildEmailFormField(),
            SizedBox(height: getProportionateScreenHeight(30)),
            buildPasswordFormField(),
            SizedBox(height: getProportionateScreenHeight(30)),
            buildConfirmPasswordFormField(),
            FormError(errors: errors),
            SizedBox(height: getProportionateScreenHeight(40)),
            DefaultButton(text: 'Continue',
                press: (){
                  if (_formKey.currentState!.validate()){
                    //link up with continue profile sign up page
                    Navigator.pushNamed(context, CompleteProfileScreen.routeName);
                  }
                }
            )
          ],
        ),
      ),
    );
  }

  TextFormField buildConfirmPasswordFormField() {
    return TextFormField(
        obscureText: true,
        onSaved: (newvalue) => confirm_password = newvalue!,
        onChanged: (value) {
          if (password == confirm_password && errors.contains(kMatchPassError)) {
            setState(() {
              errors.remove(kMatchPassError);
            });
          }
          return null;
        },
        validator: (value) {
          if (value!.isEmpty ) {
            return '';
            // setState(() {
            //   errors.add(kPassNullError);
            // });

          } else if (password != value && !errors.contains(kMatchPassError)) {
            setState(() {
              errors.add(kMatchPassError);
            });
            return '';
          }
          return null;
        },
        decoration: const InputDecoration(
            labelText: 'Confirm Password',
            hintText: 'Re-enter your password',
            floatingLabelBehavior: FloatingLabelBehavior.always,
            suffixIcon: CustomSuffixIcon(
              svgIcon: 'assets/icons/Lock.svg',
            )));
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
        obscureText: true,
        onSaved: (newvalue) => password = newvalue!,
        onChanged: (value) {
          if (value.isNotEmpty && errors.contains(kShortPassError)) {
            setState(() {
              errors.remove(kShortPassError);
            });
          } else if (value.length >= 8 && errors.contains(kShortPassError)) {
            setState(() {
              errors.remove(kShortPassError);
            });
          }
          password = value;
          return null;
        },
        validator: (value) {
          if (value!.isEmpty && !errors.contains(kShortPassError)) {
            setState(() {
              errors.add(kShortPassError);
            });
          } else if (value.length < 8 && !errors.contains(kShortPassError)) {
            setState(() {
              errors.add(kShortPassError);
            });
          }
          return null;
        },
        decoration: const InputDecoration(
            labelText: 'Password',
            hintText: 'Enter your password',
            floatingLabelBehavior: FloatingLabelBehavior.always,
            suffixIcon: CustomSuffixIcon(
              svgIcon: 'assets/icons/Lock.svg',
            )));
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newvalue) => email = newvalue!,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kEmailNullError)) {
          setState(() {
            errors.remove(kEmailNullError);
          });
        } else if (emailValidatorRegExp.hasMatch(value) &&
            errors.contains(kInvalidEmailError)) {
          setState(() {
            errors.remove(kInvalidEmailError);
          });
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kEmailNullError)) {
          setState(() {
            errors.add(kEmailNullError);
          });
          return '';
        } else if (!emailValidatorRegExp.hasMatch(value) &&
            !errors.contains(kInvalidEmailError)) {
          setState(() {
            errors.add(kInvalidEmailError);
          });
          return '';
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: 'Email',
        hintText: 'Enter your email',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          svgIcon: 'assets/icons/Mail.svg',
        ),
      ),
    );
  }
}
