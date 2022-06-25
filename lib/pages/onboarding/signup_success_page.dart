// ignore_for_file: avoid_print

import 'dart:async';

import 'package:bloom/components/utilities/my_spacers.dart';
import 'package:bloom/components/utilities/top_progress_bars.dart';
import 'package:bloom/pages/onboarding/signin_page.dart';
import 'package:flutter/material.dart';

TextEditingController fullameController = TextEditingController();
TextEditingController usernameController = TextEditingController();
TextEditingController emailAddressController = TextEditingController();
TextEditingController passwordEnteredController = TextEditingController();
TextEditingController passwordConfirmedController = TextEditingController();

class SIgnUpSuccess extends StatefulWidget {
  const SIgnUpSuccess({Key? key}) : super(key: key);

  @override
  State<SIgnUpSuccess> createState() => _SIgnUpSuccessState();
}

class _SIgnUpSuccessState extends State<SIgnUpSuccess> {
  @override
  void initState() {
    super.initState();
    startTime();
  }

  startTime() async {
    var duration = const Duration(seconds: 4);
    return Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const SignInPage()));
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
        child: Column(children: [
          //---------------------------------------------------------------------------------------------------------

          const Spacer1(),
          const TopProgressLineCompleted(),
          const SpacerLarge(),
          //---------------------------------------------------------------------------------------------------------

          Image(
            image: const AssetImage("images/success.png"),
            color: Colors.teal[300],
            width: size.width / 2,
            height: size.width / 2,
          ),
          //---------------------------------------------------------------------------------------------------------

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Congratulations",
                style: TextStyle(
                  color: Color.fromRGBO(31, 31, 31, 1),
                  fontFamily: 'Poppins',
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                width: 3.0,
              ),
              Image(
                image: const AssetImage("images/congratsmiley.png"),
                width: size.width / 13,
                height: size.width / 13,
              )
            ],
          ),
          SizedBox(
            height: size.height / 140,
          ),
          SizedBox(
            width: size.width,
            child: const Center(
              child: Text(
                "Sign up process is now complete.",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  color: Color.fromRGBO(73, 73, 73, 1),
                ),
              ),
            ),
          ),
          //---------------------------------------------------------------------------------------------------------
        ]),
      ),
    ));
  }
}
