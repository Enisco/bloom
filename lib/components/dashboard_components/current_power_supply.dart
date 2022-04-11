// ignore_for_file: must_be_immutable, non_constant_identifier_names

import 'package:bloom/components/my_spacers.dart';
import 'package:bloom/pages/onboarding/signin_page.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

double currentVoltage = 220;
double currentActivepower = 1.85;

class CurrentPowerSupplyContainer extends StatefulWidget {
  const CurrentPowerSupplyContainer({Key? key}) : super(key: key);

  @override
  _CurrentPowerSupplyContainerState createState() =>
      _CurrentPowerSupplyContainerState();
}

class _CurrentPowerSupplyContainerState
    extends State<CurrentPowerSupplyContainer> {
  void goToPowerGraphPage() {
    Navigator.push(
      context,
      PageTransition(
          type: PageTransitionType.leftToRight,
          curve: Curves.easeInOutCirc,
          duration: const Duration(milliseconds: 600),
          reverseDuration: const Duration(milliseconds: 600),
          child: const SignInPage(),
          inheritTheme: true,
          ctx: context),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      decoration: BoxDecoration(
        color: const Color.fromRGBO(252, 252, 252, 1),
        borderRadius: BorderRadius.all(Radius.circular(size.width / 40)),
      ),
      width: size.width / 2.42,
      height: size.height / 4,
      child: InkWell(
        child: TextButton(
          onPressed: () {
            goToPowerGraphPage();
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              //---------------------------------------------------------------------
              const SpacerUltraSmall(),
              Text(
                "Current Power Supply",
                style: TextStyle(
                  color: const Color.fromRGBO(57, 57, 57, 1),
                  fontFamily: 'Poppins',
                  fontSize: size.width / 23,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SpacerUltraSmall(),
              //---------------------------------------------------------------------

              // Container(
              //   color: Colors.white,
              //   height: size.height / 15,
              //   width: size.width / 2.40,
              // ),
              const Spacer0(),
              //---------------------------------------------------------------------
              EachPowerParameter(
                R: 249,
                G: 87,
                B: 0,
                O: 1,
                parameter: " Voltage",
                parameterValue: currentVoltage,
                parameterUnit: " V",
              ),

              const Spacer1(),
              EachPowerParameter(
                R: 0,
                G: 32,
                B: 63,
                O: 1,
                parameter: " Active Power",
                parameterValue: currentActivepower,
                parameterUnit: " kW",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class EachPowerParameter extends StatelessWidget {
  const EachPowerParameter({
    Key? key,
    required this.R,
    required this.G,
    required this.B,
    required this.O,
    required this.parameter,
    required this.parameterValue,
    required this.parameterUnit,
  }) : super(key: key);

  final int R;
  final int G;
  final int B;
  final double O;
  final String parameter;
  final double parameterValue;
  final String parameterUnit;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: size.width / 90,
              backgroundColor: Color.fromRGBO(R, G, B, O),
            ),
            Text(
              parameter,
              style: TextStyle(
                color: const Color.fromRGBO(57, 57, 57, 1),
                fontFamily: 'Poppins',
                fontSize: size.width / 33,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        Center(
          child: RichText(
            text: TextSpan(
              text: parameterValue.toString(),
              style: TextStyle(
                fontFamily: 'Poppins',
                color: const Color.fromRGBO(31, 31, 31, 1),
                fontSize: size.width / 15,
                fontWeight: FontWeight.w500,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: parameterUnit.toString(),
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Colors.blue.withOpacity(0.6),
                    fontSize: size.width / 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
