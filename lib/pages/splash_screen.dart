// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'onboarding/signup_page1.dart';

class BloomSplashScreen extends StatelessWidget {
  const BloomSplashScreen({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SplashScreen(
      seconds: 5,
      navigateAfterSeconds: const SignUpPageOne(),
      title: Text(
        'Bloom',
        textScaleFactor: 2,
        style: TextStyle(
          fontFamily: 'Poppins',
          fontSize: size.width / 18,
          fontWeight: FontWeight.w800,
        ),
      ),
      image: Image(
        image: const AssetImage("images/light bulb.gif"),
        color: Colors.amber.shade700,
        width: size.width / 3,
        height: size.width / 3,
        fit: BoxFit.fitHeight,
      ),
      loadingText: const Text(
        "Blooming",
        style: TextStyle(
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w100,
        ),
      ),
      photoSize: size.height / 5,
      loaderColor: Colors.black,
    );
  }
}
