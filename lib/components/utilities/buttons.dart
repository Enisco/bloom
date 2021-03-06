import 'package:bloom/pages/mainpages/bloom_homepage.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class BlackNextButton extends StatelessWidget {
  final String text;
  final Function pressed;

  const BlackNextButton({
    Key? key,
    required this.pressed, required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Center(
      child: Container(
        width: size.width / 1.5,
        height: size.height / 15,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.black,
        ),
        child: InkWell(
          splashColor: Colors.white10,
          child: TextButton(
            child: Text(
              text,
              style: TextStyle(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: size.height / 45,
              ),
            ),
            onPressed: () {
              // ignore: avoid_print
              print(text);
              pressed();
            },
          ),
        ),
      ),
    );
  }
}

class SignInButton extends StatelessWidget {
  const SignInButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Center(
      child: Container(
        width: size.width / 1.5,
        height: size.height / 15,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.black,
        ),
        child: InkWell(
          splashColor: Colors.white10,
          child: TextButton(
            child: Text(
              "Sign In",
              style: TextStyle(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: size.height / 45,
              ),
            ),
            onPressed: () {
              // ignore: avoid_print
              print("Signed In");

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
            },
          ),
        ),
      ),
    );
  }
}
