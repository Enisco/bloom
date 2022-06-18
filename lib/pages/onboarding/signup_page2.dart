// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:bloom/components/buttons.dart';
import 'package:bloom/components/my_spacers.dart';
import 'package:bloom/components/top_progress_bars.dart';
import 'package:bloom/pages/onboarding/already_have_acc_check.dart';
import 'signup_success_page.dart';
import 'signin_page.dart';

TextEditingController fullameController = TextEditingController();
TextEditingController usernameController = TextEditingController();
TextEditingController emailAddressController = TextEditingController();
TextEditingController passwordEnteredController = TextEditingController();
TextEditingController passwordConfirmedController = TextEditingController();
bool enableConfirmPasswordField = false;

class SIgnUpTwo extends StatefulWidget {
  const SIgnUpTwo({Key? key}) : super(key: key);

  @override
  State<SIgnUpTwo> createState() => _SIgnUpTwoState();
}

class _SIgnUpTwoState extends State<SIgnUpTwo> {
  bool _isObscure = true;

  void goToSignUpSuccess() {
    Navigator.push(
      context,
      PageTransition(
          type: PageTransitionType.topToBottom,
          curve: Curves.easeInOutCirc,
          duration: const Duration(milliseconds: 1000),
          reverseDuration: const Duration(milliseconds: 1000),
          child: const SIgnUpSuccess(),
          inheritTheme: true,
          ctx: context),
    );
  }

  void goToSignInPage() {
    Navigator.push(
      context,
      PageTransition(
          type: PageTransitionType.leftToRightWithFade,
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
      child: SingleChildScrollView(
        padding:
            EdgeInsets.symmetric(horizontal: size.width / 15, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //---------------------------------------------------------------------------------------------------------

            const Spacer1(),
            const TopProgressLineMiddle(),
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
                "We require your full details to create your account",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),

            const Spacer3(),
            //---------------------------------------------------------------------------------------------------------

            TextField(
              controller: fullameController,
              style: const TextStyle(
                  fontFamily: 'Poppins',
                  color: Colors.black,
                  fontWeight: FontWeight.w500),
              decoration: const InputDecoration(
                labelText: 'Full Name',
                hintText: "Enter your full name",
              ),
            ),

            const Spacer2(),
            //---------------------------------------------------------------------------------------------------------

            TextField(
              controller: usernameController,
              style: const TextStyle(
                  fontFamily: 'Poppins',
                  color: Colors.black,
                  fontWeight: FontWeight.w500),
              decoration: const InputDecoration(
                labelText: 'Username',
                hintText: "Enter your preferred username",
              ),
            ),

            const Spacer2(),
            //---------------------------------------------------------------------------------------------------------

            TextField(
              controller: emailAddressController,
              style: const TextStyle(
                  color: Colors.black, fontWeight: FontWeight.w500),
              decoration: const InputDecoration(
                labelText: 'Email Address',
                hintText: "Enter your email address",
              ),
            ),

            const Spacer2(),
            //---------------------------------------------------------------------------------------------------------

            TextField(
              obscureText: _isObscure,
              controller: passwordEnteredController,
              style: const TextStyle(
                  fontFamily: 'Poppins',
                  color: Colors.black,
                  fontWeight: FontWeight.w500),
              decoration: InputDecoration(
                labelText: 'Password',
                hintText: "Enter preffered password",
                suffixIcon: IconButton(
                  icon: Icon(
                      _isObscure ? Icons.visibility : Icons.visibility_off),
                  onPressed: () {
                    setState(
                      () {
                        _isObscure = !_isObscure;
                      },
                    );
                  },
                ),
              ),
              onChanged: (passwordValue) {
                setState(
                  () {
                    enableConfirmPasswordField = passwordValue.length >= 5;
                  },
                );
              },
            ),

            const Spacer2(),
            //---------------------------------------------------------------------------------------------------------

            TextField(
              enabled: enableConfirmPasswordField,
              obscureText: _isObscure,
              controller: passwordConfirmedController,
              style: const TextStyle(
                  fontFamily: 'Poppins',
                  color: Colors.black,
                  fontWeight: FontWeight.w500),
              decoration: InputDecoration(
                labelText: 'Confirm Password',
                hintText: "Enter preffered password again",
                suffixIcon: IconButton(
                  icon: Icon(
                      _isObscure ? Icons.visibility : Icons.visibility_off),
                  onPressed: () {
                    setState(
                      () {
                        _isObscure = !_isObscure;
                      },
                    );
                  },
                ),
              ),
            ),

            const Spacer4(),
            BlackNextButton(
              pressed: goToSignUpSuccess,
              text: 'Next',
            ),
            //---------------------------------------------------------------------------------------------------------

            const Spacer2(),
            AlreadyHaveAnAccountCheck(login: false, press: goToSignInPage),
            const Spacer2(),
          ],
        ),
      ),
    ));
  }
}
