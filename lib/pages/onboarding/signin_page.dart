// ignore_for_file: avoid_print

import 'package:bloom/pages/mainpages/bloom_homepage.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:bloom/components/buttons.dart';
import 'package:bloom/components/my_spacers.dart';
import 'package:bloom/components/top_progress_bars.dart';
import 'package:bloom/pages/onboarding/already_have_acc_check.dart';
import 'signup_page1.dart';

TextEditingController usernameController = TextEditingController();
TextEditingController passwordController = TextEditingController();

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool _isObscure = true;

  void goToHomepage() {
    Navigator.push(
      context,
      PageTransition(
          type: PageTransitionType.rightToLeft,
          curve: Curves.easeInToLinear,
          duration: const Duration(milliseconds: 1000),
          reverseDuration: const Duration(milliseconds: 1000),
          child: const BloomHomepage(),
          inheritTheme: true,
          ctx: context),
    );
  }

  void goToSignUpPage() {
    Navigator.push(
      context,
      PageTransition(
          type: PageTransitionType.rightToLeft,
          curve: Curves.fastLinearToSlowEaseIn,
          duration: const Duration(milliseconds: 1000),
          reverseDuration: const Duration(milliseconds: 1000),
          child: const SignUpPageOne(),
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
              //---------------------------------------------------------------------------------------------------------

              const Spacer1(),
              const TopProgressLineCompleted(),
              const Spacer1(),
              const Text(
                "Sign In",
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
                  "Welcome Back! Enter your details to continue",
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
              ),

              const Spacer4(),
              //---------------------------------------------------------------------------------------------------------

              TextField(
                controller: usernameController,
                style: const TextStyle(
                    fontFamily: 'Poppins',
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
                decoration: const InputDecoration(
                  labelText: 'Username',
                  hintText: "Enter username or email",
                ),
              ),

              const Spacer2(),
              //---------------------------------------------------------------------------------------------------------

              TextField(
                obscureText: _isObscure,
                controller: passwordController,
                style: const TextStyle(
                    fontFamily: 'Poppins',
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: "Enter your password",
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
              //---------------------------------------------------------------------------------------------------------

              BlackNextButton(
                pressed: goToHomepage,
                text: 'Sign In',
              ),
              const Spacer2(),
              //---------------------------------------------------------------------------------------------------------
              
              AlreadyHaveAnAccountCheck(press: goToSignUpPage),
              const Spacer2(),
            ],
          ),
        ),
      ),
    ));
  }
}
