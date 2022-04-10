// @dart=2.9
import 'package:bloom/pages/mainpages/bloom_homepage.dart';
import 'package:flutter/material.dart';
import 'pages/splash_screen.dart';
import 'pages/onboarding/signup_page2.dart';
import 'pages/onboarding/signup_page1.dart';
import 'pages/onboarding/signup_success_page.dart';
import 'pages/onboarding/signin_page.dart';
import 'pages/mainpages/faqs_page.dart';
import 'pages/mainpages/about_us.dart';
import 'package:bloom/pages/mainpages/team_page.dart';
import 'package:bloom/pages/mainpages/dashboard.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Bloom',
      home: Scaffold(
        // appBar: AppBar(title: const Text('Bloom')),
        // body: BloomSplashScreen(),
        // body: SignUpPageOne(),
        // body: SIgnUpTwo(),
        // body: SIgnUpSuccess(),
        // body: LoginPage(),
        // body: FAQs_page(),
        // body: AboutUsPage(),
        // body: TeamDetailsPage(),
        body: BloomHomepage(),
        // body: Dashboard(),
      ),
    );
  }
}
