import 'package:bloom/pages/splash_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Bloom',
      home: Scaffold(
        // appBar: AppBar(title: const Text('Bloom')),
        body: BloomSplashScreen(),
        // body: SignUpPageOne(),
        // body: SIgnUpTwo(),
        // body: SIgnUpSuccess(),
        // body: LoginPage(),
        // body: FAQs_page(),
        // body: AboutUsPage(),
        // body: TeamDetailsPage(),
        // body: BloomHomepage(),
        // body: Dashboard(),
      ),
    );
  }
}
