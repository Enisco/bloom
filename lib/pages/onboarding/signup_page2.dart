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
          type: PageTransitionType.bottomToTop,
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
              const TopProgressLineMiddle(),
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
                  maxHeight: size.height / 20,
                  maxWidth: size.width,
                ),
                child: Text(
                  "We require your full details to create your account",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: size.height / 43,
                    color: Colors.black38,
                  ),
                ),
              ),
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
                child: TextField(
                  controller: fullameController,
                  style: const TextStyle(
                      fontFamily: 'Poppins',
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.all(10.0),
                    border: InputBorder.none,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 1.0),
                    ),
                    labelText: 'Full Name',
                    labelStyle: TextStyle(
                      fontFamily: 'Poppins',
                      color: Colors.black38,
                    ),
                    hintText: "Enter your full name",
                    hintStyle: TextStyle(
                      fontFamily: 'Poppins',
                      color: Colors.black38,
                    ),
                  ),
                ),
              ),
              //---------------------------------------------------------------------------------------------------------

              const Spacer2(),
              //---------------------------------------------------------------------------------------------------------

              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                ),
                width: size.width,
                height: size.height / 18,
                child: TextField(
                  controller: usernameController,
                  style: const TextStyle(
                      fontFamily: 'Poppins',
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.all(10.0),
                    border: InputBorder.none,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 1.0),
                    ),
                    labelText: 'Username',
                    labelStyle: TextStyle(
                      fontFamily: 'Poppins',
                      color: Colors.black38,
                    ),
                    hintText: "Enter your preferred username",
                    hintStyle: TextStyle(
                      fontFamily: 'Poppins',
                      color: Colors.black38,
                    ),
                  ),
                ),
              ),

              //---------------------------------------------------------------------------------------------------------

              const Spacer2(),
              //---------------------------------------------------------------------------------------------------------

              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                ),
                width: size.width,
                height: size.height / 18,
                child: TextField(
                  controller: emailAddressController,
                  style: const TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w500),
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.all(10.0),
                    border: InputBorder.none,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 1.0),
                    ),
                    labelText: 'Email Address',
                    labelStyle: TextStyle(
                      fontFamily: 'Poppins',
                      color: Colors.black38,
                    ),
                    hintText: "Enter your email address",
                    hintStyle: TextStyle(
                      fontFamily: 'Poppins',
                      color: Colors.black38,
                    ),
                  ),
                ),
              ),
              //---------------------------------------------------------------------------------------------------------

              const Spacer2(),
              //---------------------------------------------------------------------------------------------------------

              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                ),
                width: size.width,
                height: size.height / 18,
                child: TextField(
                  obscureText: _isObscure,
                  controller: passwordEnteredController,
                  style: const TextStyle(
                      fontFamily: 'Poppins',
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 1.0),
                    ),
                    labelText: 'Password',
                    labelStyle: const TextStyle(
                      fontFamily: 'Poppins',
                      color: Colors.black38,
                    ),
                    hintText: "Enter preffered password",
                    hintStyle: const TextStyle(
                      fontFamily: 'Poppins',
                      color: Colors.black38,
                    ),
                    contentPadding: const EdgeInsets.all(10.0),
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
              ),
              //---------------------------------------------------------------------------------------------------------

              const Spacer2(),
              //---------------------------------------------------------------------------------------------------------

              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                ),
                width: size.width,
                height: size.height / 18,
                child: TextField(
                  obscureText: _isObscure,
                  controller: passwordConfirmedController,
                  style: const TextStyle(
                      fontFamily: 'Poppins',
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 1.0),
                    ),
                    labelText: 'Confirm Password',
                    labelStyle: const TextStyle(
                      fontFamily: 'Poppins',
                      color: Colors.black38,
                    ),
                    hintText: "Enter preffered password again",
                    hintStyle: const TextStyle(
                      fontFamily: 'Poppins',
                      color: Colors.black38,
                    ),
                    contentPadding: const EdgeInsets.all(10.0),
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
              ),
              //---------------------------------------------------------------------------------------------------------

              const Spacer4(),
              BlackNextButton(pressed: goToSignUpSuccess),
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
