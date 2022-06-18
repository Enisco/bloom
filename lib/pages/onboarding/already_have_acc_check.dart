import 'package:flutter/material.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final Function press;

  // ignore: use_key_in_widget_constructors
  const AlreadyHaveAnAccountCheck({
    this.login = true,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "Are you new here? " : "Already have an Account? ",
          style: const TextStyle(fontFamily: 'Poppins', color: Colors.black),
        ),
        GestureDetector(
          onTap: () {
            press();
          },
          child: Text(
            login ? "Sign Up" : "Sign In",
            style: const TextStyle(
              fontFamily: 'Poppins',
              color: Colors.amber,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
