import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              icon: const Icon(CupertinoIcons.chevron_back),
              color: Colors.black87,
              onPressed: () {
                Navigator.pop(context);
              }),
          backgroundColor: Colors.white,
          shadowColor: Colors.black54,
          title: const Text(
            "Active Power Details",
            style: TextStyle(
              color: Colors.black87,
              fontFamily: 'Poppins',
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Text(
                "Settings are unavailable for now.",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: size.width / 18,
                ),
              ),
            ),
            Center(
              child: Text(
                "Thank you!",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: size.width / 18,
                ),
              ),
            ),
          ],
        ));
  }
}
