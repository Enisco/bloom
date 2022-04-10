// ignore_for_file: avoid_print

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:bloom/components/my_spacers.dart';
import 'package:bloom/components/top_progress_bars.dart';
import 'signin_page.dart';

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
      child: Container(
        height: double.infinity,
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: size.width / 14, vertical: 10),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
                children: [
                  const Spacer1(),

                  const TopProgressLineCompleted(),
                  //---------------------------------------------------------------------------------------------------------

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
                      Text(
                        "Congratulations",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Roboto',
                          fontSize: size.height / 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        width: 3.0,
                      ),
                      Image(
                        image: const AssetImage("images/congrat smiley.png"),
                        width: size.width / 10,
                        height: size.width / 10,
                      )
                    ],
                  ),
                  SizedBox(
                    height: size.height / 140,
                  ),
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      maxHeight: size.height / 30,
                      maxWidth: size.width,
                    ),
                    child: Text(
                      "Sign up process is now complete.",
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: size.height / 43,
                        color: Colors.black45,
                      ),
                    ),
                  ),
                  //---------------------------------------------------------------------------------------------------------
                ]),
          ),
        ),
      ),
    ));
  }
}
