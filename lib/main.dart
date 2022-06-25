// @dart=2.9

// /*
import 'package:bloom/components/utilities/constants.dart';
import 'package:bloom/pages/mainpages/bloom_homepage.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.grey,
        inputDecorationTheme: textFeildInputDecoration,
      ),
      title: 'Bloom',
      home: const Scaffold(
        // body: BloomSplashScreen(),
        // body: SignUpPageOne(),
        // body: SIgnUpTwo(),
        // body: SIgnUpSuccess(),
        // body: SignInPage(),
        // body: FAQs_page(),
        // body: AboutUsPage(),
        // body: TeamDetailsPage(),
        body: BloomHomepage(),
        // body: Dashboard(),
      ),
    );
  }
}
// */
