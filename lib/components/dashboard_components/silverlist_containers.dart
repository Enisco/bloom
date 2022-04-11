// ignore_for_file: must_be_immutable

import 'package:bloom/components/my_spacers.dart';
import 'package:bloom/pages/onboarding/signup_page2.dart';
import 'package:bloom/pages/onboarding/signup_page1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

bool meterState = false;

class EnergyConsumptionContainer extends StatefulWidget {
  const EnergyConsumptionContainer({Key? key}) : super(key: key);

  @override
  _EnergyConsumptionContainerState createState() =>
      _EnergyConsumptionContainerState();
}

class _EnergyConsumptionContainerState
    extends State<EnergyConsumptionContainer> {
  void goToPowerAnalysisPage() {
    Navigator.push(
      context,
      PageTransition(
          type: PageTransitionType.leftToRight,
          curve: Curves.easeInOutCirc,
          duration: const Duration(milliseconds: 600),
          reverseDuration: const Duration(milliseconds: 600),
          child: const SIgnUpTwo(),
          inheritTheme: true,
          ctx: context),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      decoration: BoxDecoration(
        color: const Color(0x1418A0FB),
        borderRadius: BorderRadius.all(Radius.circular(size.width / 40)),
      ),
      width: size.width / 2.42,
      height: size.height / 4,
      child: InkWell(
        child: TextButton(
          onPressed: () {
            goToPowerAnalysisPage();
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Spacer0(),
              CircleAvatar(
                radius: size.width / 20,
                // backgroundColor: Colors.blue.withOpacity(0.2),
                backgroundColor: const Color(0x1F18A0FB),
                child: Icon(
                  CupertinoIcons.bolt,
                  color: const Color.fromRGBO(24, 160, 251, 1),
                  size: size.width / 12,
                ),
              ),
              const Spacer1(),
              Text(
                "Energy",
                style: TextStyle(
                  color: const Color.fromRGBO(24, 160, 251, 1),
                  fontFamily: 'Poppins',
                  fontSize: size.width / 23,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                "Consumption       ",
                style: TextStyle(
                  color: const Color.fromRGBO(24, 160, 251, 1),
                  fontFamily: 'Poppins',
                  fontSize: size.width / 23,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Spacer1(),
              RichText(
                text: TextSpan(
                  text: "413",
                  style: TextStyle(
                    // color: const Color.fromRGBO(31, 31, 31, 1),
                    color: Colors.black87,
                    fontFamily: 'Poppins',
                    fontSize: size.width / 12,
                    fontWeight: FontWeight.w600,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: " kW/h  ",
                      style: TextStyle(
                        color: Colors.black87,
                        // color: const Color.fromRGBO(31, 31, 31, 1),
                        fontFamily: 'Poppins',
                        fontSize: size.width / 25,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//------------------------------*********************-----------------------------

class MetersDetailsContainer extends StatefulWidget {
  const MetersDetailsContainer({Key? key}) : super(key: key);

  @override
  _MetersDetailsContainerState createState() => _MetersDetailsContainerState();
}

class _MetersDetailsContainerState extends State<MetersDetailsContainer> {
  void goToPowerAnalysisPage() {
    Navigator.push(
      context,
      PageTransition(
          type: PageTransitionType.leftToRight,
          curve: Curves.easeInOutCirc,
          duration: const Duration(milliseconds: 600),
          reverseDuration: const Duration(milliseconds: 600),
          child: const SignUpPageOne(),
          inheritTheme: true,
          ctx: context),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      // padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
      decoration: BoxDecoration(
        color: const Color(0x1400A7A7),
        borderRadius: BorderRadius.all(Radius.circular(size.width / 40)),
      ),
      width: size.width / 2.42,
      height: size.height / 4,
      child: InkWell(
        child: TextButton(
          onPressed: () {
            setState(() {
              meterState = !meterState;
            });
            // goToPowerAnalysisPage();
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Spacer0(),
              CircleAvatar(
                radius: size.width / 20,
                // backgroundColor: Colors.blue.withOpacity(0.2),
                backgroundColor: const Color(0x1F00A7A7),
                child: Icon(
                  CupertinoIcons.antenna_radiowaves_left_right,
                  color: const Color.fromRGBO(0, 167, 167, 1),
                  size: size.width / 12,
                ),
              ),
              const Spacer1(),
              Text(
                "Meter Connection",
                style: TextStyle(
                  // color: const Color.fromRGBO(0, 167, 167, 1),
                  color: const Color.fromRGBO(0, 167, 167, 1),

                  fontFamily: 'Poppins',
                  fontSize: size.width / 23,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                "State",
                style: TextStyle(
                  color: const Color.fromRGBO(0, 167, 167, 1),
                  fontFamily: 'Poppins',
                  fontSize: size.width / 23,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Spacer2(),
              Row(
                children: [
                  Icon(
                    meterState
                        ? CupertinoIcons.dot_radiowaves_right
                        : CupertinoIcons.wifi_slash,
                    color: meterState
                        ? const Color.fromRGBO(173, 239, 209, 1)
                        : Colors.redAccent.withOpacity(0.5),
                  ),
                  Text(
                    meterState ? " Active" : " Inactive",
                    style: TextStyle(
                      color: Colors.black87,
                      fontFamily: 'Poppins',
                      fontSize: size.width / 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
