// ignore_for_file: must_be_immutable

import 'package:bloom/components/dashboard_components/energy_usage_details_page.dart';
import 'package:bloom/components/utilities/my_spacers.dart';
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
  void goToEnergyAnalysisPage() {
    Navigator.push(
      context,
      PageTransition(
          type: PageTransitionType.leftToRight,
          curve: Curves.easeInOutCirc,
          duration: const Duration(milliseconds: 600),
          reverseDuration: const Duration(milliseconds: 600),
          child: const EnergyDetailsPage(),
          inheritTheme: true,
          ctx: context),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      decoration: BoxDecoration(
        color: const Color.fromRGBO(24, 160, 251, 0.08),
        borderRadius: BorderRadius.all(Radius.circular(size.width / 40)),
      ),
      width: size.width / 2.42,
      height: size.height / 4,
      child: InkWell(
        child: TextButton(
          onPressed: () {
            goToEnergyAnalysisPage();
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Spacer0(),
              CircleAvatar(
                radius: size.width / 20,
                backgroundColor: const Color.fromRGBO(24, 160, 251, 0.12),
                child: Icon(
                  CupertinoIcons.bolt,
                  color: const Color.fromRGBO(24, 160, 251, 1),
                  size: size.width / 12,
                ),
              ),
              const Spacer2(),
              SizedBox(
                width: size.width,
                child: const Text(
                  "Energy Consumption",
                  style: TextStyle(
                    color: Color.fromRGBO(24, 160, 251, 1),
                    fontFamily: 'Poppins',
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              // SizedBox(
              //   width: size.width,
              //   child: const Text(
              //     "Consumption",
              //     style: TextStyle(
              //       color: Color.fromRGBO(24, 160, 251, 1),
              //       fontFamily: 'Poppins',
              //       fontSize: 14,
              //       fontWeight: FontWeight.w500,
              //     ),
              //   ),
              // ),
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
      decoration: BoxDecoration(
        color: const Color.fromRGBO(0, 167, 167, 0.08),
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
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Spacer0(),
              CircleAvatar(
                radius: size.width / 20,
                backgroundColor: const Color.fromRGBO(0, 167, 167, 0.12),
                child: Icon(
                  CupertinoIcons.antenna_radiowaves_left_right,
                  color: const Color.fromRGBO(0, 167, 167, 1),
                  size: size.width / 12,
                ),
              ),
              const Spacer2(),
              SizedBox(
                width: size.width,
                child: const Text(
                  "Meter Connection State",
                  style: TextStyle(
                    color: Color.fromRGBO(0, 167, 167, 1),
                    fontFamily: 'Poppins',
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
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
                        ? const Color.fromRGBO(0, 167, 167, 0.5)
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
