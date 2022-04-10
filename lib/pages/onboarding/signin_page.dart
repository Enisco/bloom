// ignore_for_file: avoid_print

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

  void goToSignUpPage() {
    Navigator.push(
      context,
      PageTransition(
          type: PageTransitionType.rightToLeft,
          curve: Curves.fastLinearToSlowEaseIn,
          duration: const Duration(milliseconds: 1000),
          reverseDuration:  const Duration(milliseconds: 1000),
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
              const Spacer1(),

              const TopProgressLineCompleted(),
              const Spacer1(),
              Text(
                "Sign In",
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Roboto',
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
                  "Welcome Back! Enter your details to continue",
                  style: TextStyle(
                    fontFamily: 'SourceSerifPro',
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
                  controller: usernameController,
                  style: const TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w500),
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.all(10.0),
                    border: InputBorder.none,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 1.0),
                    ),
                    labelText: 'Username',
                    labelStyle: TextStyle(
                      color: Colors.black38,
                    ),
                    hintText: "Enter username or  email",
                    hintStyle: TextStyle(
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
                  controller: passwordController,
                  style: const TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w500),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 1.0),
                    ),
                    labelText: 'Password',
                    labelStyle: const TextStyle(
                      color: Colors.black38,
                    ),
                    hintText: "Enter your password",
                    hintStyle: const TextStyle(
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
              const SignInButton(),
              const Spacer1(),
              //---------------------------------------------------------------------------------------------------------
              AlreadyHaveAnAccountCheck(press: goToSignUpPage),
            ],
          ),
        ),
      ),
    ));
  }
}
