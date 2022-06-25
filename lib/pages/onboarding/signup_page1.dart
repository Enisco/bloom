// ignore_for_file: avoid_print

import 'package:bloom/components/utilities/buttons.dart';
import 'package:bloom/components/utilities/top_progress_bars.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:bloom/pages/onboarding/already_have_acc_check.dart';
import '../../components/utilities/my_spacers.dart';
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
          duration: const Duration(milliseconds: 700),
          reverseDuration: const Duration(milliseconds: 700),
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
          duration: const Duration(milliseconds: 700),
          reverseDuration: const Duration(milliseconds: 700),
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
        child: SingleChildScrollView(
          padding:
              EdgeInsets.symmetric(horizontal: size.width / 15, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //---------------------------------------------------------------------------------------------------------

              const Spacer1(),
              const TopProgressLineBeginning(),
              const Spacer1(),
              //---------------------------------------------------------------------------------------------------------

              const Text(
                "Sign Up",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: size.height / 140,
              ),
              SizedBox(
                width: size.width,
                child: const Text(
                  "Enter your phone number to start your signing up process",
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
              ),

              const Spacer4(),
              //---------------------------------------------------------------------------------------------------------
              IntlPhoneField(
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
                textAlignVertical: const TextAlignVertical(y: 0.1),
                decoration: const InputDecoration(
                  labelText: '903 224 2379',
                  hintText: "Your Phone Number",
                ),
                onChanged: (phone) {
                  print(phone.completeNumber);
                },
                onCountryChanged: (country) {
                  print('Country changed to: ' + country.name);
                },
              ),

              const Spacer4(),
              //---------------------------------------------------------------------------------------------------------

              BlackNextButton(
                pressed: goToSignUpTwo,
                text: 'Next',
              ),
              const Spacer2(),
              //---------------------------------------------------------------------------------------------------------

              AlreadyHaveAnAccountCheck(login: false, press: goToSignInPage),
              const Spacer2(),
            ],
          ),
        ),
      ),
    );
  }
}
