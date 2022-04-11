// ignore_for_file: must_be_immutable

import 'package:bloom/components/my_spacers.dart';
import 'package:bloom/pages/onboarding/signin_page.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class ConsumptionSummaryContainer extends StatefulWidget {
  const ConsumptionSummaryContainer({Key? key}) : super(key: key);

  @override
  _ConsumptionSummaryContainerState createState() =>
      _ConsumptionSummaryContainerState();
}

class _ConsumptionSummaryContainerState
    extends State<ConsumptionSummaryContainer> {
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
                "Consumption       ",
                style: TextStyle(
                  color: const Color.fromRGBO(57, 57, 57, 1),
                  fontFamily: 'Poppins',
                  fontSize: size.width / 23,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "Summary       ",
                style: TextStyle(
                  color: const Color.fromRGBO(57, 57, 57, 1),
                  fontFamily: 'Poppins',
                  fontSize: size.width / 23,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Spacer0(),

              //---------------------------------------------------------------------

              Row(
                children: [
                  CircleAvatar(
                    radius: size.width / 90,
                    backgroundColor: const Color.fromRGBO(24, 160, 251, 1),
                  ),
                  Text(
                    " Energy Consumption",
                    style: TextStyle(
                      color: const Color.fromRGBO(57, 57, 57, 1),
                      fontFamily: 'Poppins',
                      fontSize: size.width / 33,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              const SpacerSmall(),
              //---------------------------------------------------------------------
              Row(
                children: [
                  CircleAvatar(
                    radius: size.width / 90,
                    backgroundColor: const Color.fromRGBO(0, 167, 167, 1),
                  ),
                  Text(
                    " Active Meter Connections",
                    style: TextStyle(
                      color: const Color.fromRGBO(57, 57, 57, 1),
                      fontFamily: 'Poppins',
                      fontSize: size.width / 33,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              const Spacer0(),
              //---------------------------------------------------------------------

              Container(
                color: Colors.white,
                height: size.height / 9.5,
                width: size.width / 2.40,
                // child: ,
              )
            ],
          ),
        ),
      ),
    );
  }
}
