// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import 'package:bloom/components/my_spacers.dart';
import 'package:bloom/components/buttons.dart';
import 'package:bloom/components/top_progress_bars.dart';
import 'package:bloom/pages/onboarding/already_have_acc_check.dart';
import 'signin_page.dart';
import 'signup_page2.dart';

class SignUpPageOne extends StatefulWidget {
  const SignUpPageOne({Key? key}) : super(key: key);

  @override
  State<SignUpPageOne> createState() => _SignUpPageOneState();
}

class _SignUpPageOneState extends State<SignUpPageOne> {
  void goToSignUpTwo() {
    Navigator.push(
      context,
      PageTransition(
          type: PageTransitionType.rightToLeft,
          curve: Curves.easeInToLinear,
          duration: const Duration(milliseconds: 1000),
          reverseDuration: const Duration(milliseconds: 1000),
          child: const SIgnUpTwo(),
          inheritTheme: true,
          ctx: context),
    );
  }

  void goToSignInPage() {
    Navigator.push(
      context,
      PageTransition(
          type: PageTransitionType.rightToLeftWithFade,
          curve: Curves.easeInToLinear,
          duration: const Duration(milliseconds: 1000),
          reverseDuration: const Duration(milliseconds: 1000),
          child: const SignInPage(),
          inheritTheme: true,
          ctx: context),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        body: SafeArea(
      bottom: false,
      child: Container(
        height: double.infinity,
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: size.width / 14, vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacer1(),

              const TopProgressLineBeginning(),
              const Spacer1(),
              //---------------------------------------------------------------------------------------------------------

              Text(
                "Sign Up",
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Poppins',
                  fontSize: size.height / 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: size.height / 140,
              ),
              ConstrainedBox(
                  constraints: BoxConstraints(
                    maxHeight: size.height / 18,
                    maxWidth: size.width,
                  ),
                  child: Text(
                    "Enter your phone number to start your signing up process",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: size.height / 43,
                      color: Colors.black38,
                    ),
                  )),

              //---------------------------------------------------------------------------------------------------------

              const Spacer3(),
              //---------------------------------------------------------------------------------------------------------
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                ),
                width: size.width,
                height: size.height / 18,
                child: IntlPhoneField(
                  initialCountryCode: 'NG',
                  flagsButtonMargin: const EdgeInsets.fromLTRB(
                    10.0,
                    5.0,
                    5.0,
                    5.0,
                  ),
                  dropdownIcon: const Icon(
                    Icons.arrow_drop_down,
                  ),
                  dropdownIconPosition: IconPosition.trailing,
                  disableLengthCheck: true,
                  textAlignVertical: const TextAlignVertical(y: 0.0),
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    border: InputBorder.none,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 1.0),
                    ),
                    labelText: '903 224 2379',
                    labelStyle: TextStyle(
                      fontFamily: 'Poppins',
                      color: Colors.black38,
                    ),
                    hintText: "Your Phone Number",
                    hintStyle: TextStyle(
                      fontFamily: 'Poppins',
                      color: Colors.black38,
                    ),
                  ),
                  onChanged: (phone) {
                    print(phone.completeNumber);
                  },
                  onCountryChanged: (country) {
                    print('Country changed to: ' + country.name);
                  },
                ),
              ),
              //---------------------------------------------------------------------------------------------------------

              const Spacer4(),
              //---------------------------------------------------------------------------------------------------------

              BlackNextButton(pressed: goToSignUpTwo),
              //--------------------------------------------------------------------------------------------------------

              const Spacer1(),
              //---------------------------------------------------------------------------------------------------------

              AlreadyHaveAnAccountCheck(login: false, press: goToSignInPage),
            ],
          ),
        ),
      ),
    ));
  }
}
