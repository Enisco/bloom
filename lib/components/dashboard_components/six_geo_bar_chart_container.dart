// ignore_for_file: must_be_immutable, non_constant_identifier_names

import 'package:bloom/components/utilities/my_spacers.dart';
import 'package:bloom/pages/onboarding/signin_page.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class SixGeoBarChartContainer extends StatefulWidget {
  const SixGeoBarChartContainer({Key? key}) : super(key: key);

  @override
  _SixGeoBarChartContainerState createState() =>
      _SixGeoBarChartContainerState();
}

class _SixGeoBarChartContainerState extends State<SixGeoBarChartContainer> {
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
                "Bar Chart",
                style: TextStyle(
                  color: const Color.fromRGBO(57, 57, 57, 1),
                  fontFamily: 'Poppins',
                  fontSize: size.width / 23,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Spacer0(),
              //---------------------------------------------------------------------

              Container(
                color: Colors.white,
                height: size.height / 9,
                width: size.width / 2.40,
              ),
              const Spacer0(),

              Text(
                "Keys",
                style: TextStyle(
                  color: const Color.fromRGBO(57, 57, 57, 1),
                  fontFamily: 'Poppins',
                  fontSize: size.width / 23,
                  fontWeight: FontWeight.w600,
                ),
              ),
              // const Spacer0(),

              //---------------------------------------------------------------------

              Container(
                padding: const EdgeInsets.all(0.0),
                color: Colors.white10.withOpacity(0.2),
                height: size.height / 24,
                width: size.width / 3,
                child: GridView.count(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: const EdgeInsets.all(0.0),
                  childAspectRatio: 2.0,
                  crossAxisCount: 4,
                  children: List.generate(
                    6,
                    (index) {
                      return EachGeoNotation(
                          R: R[index],
                          G: G[index],
                          B: B[index],
                          O: O[index],
                          geoPoliticalZone: geoLocText[index]);
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

List<String> geoLocText = [" NC ", " NW ", " NE ", " SW ", " SE ", " SS "];
List<int> R = [0, 249, 0, 173, 255, 96];
List<int> G = [164, 87, 32, 239, 209, 96];
List<int> B = [204, 0, 63, 209, 3, 96];
List<double> O = [1, 1, 1, 1, 1, 1];

// Widget EachGeoNotationWrapper(List<String> geoLocs) {
//   List<Widget> EachGeoNotationWidget = [];
//   for (int indxM = 1; indxM < geoLocs.length; indxM++) {
//     EachGeoNotationWidget.add(EachGeoNotation(
//       R: R[indxM],
//       G: G[indxM],
//       B: B[indxM],
//       O: O[indxM],
//       geoPoliticalZone: geoLocText[indxM],
//     ));
//   }
//   return Wrap(
//       alignment: WrapAlignment.spaceEvenly,
//       runAlignment: WrapAlignment.spaceBetween,
//       spacing: 1.0, // gap between adjacent chips
//       runSpacing: 1.0, // gap between lines
//       children: EachGeoNotationWidget);
// }

class EachGeoNotation extends StatelessWidget {
  const EachGeoNotation(
      {Key? key,
      required this.R,
      required this.G,
      required this.B,
      required this.O,
      required this.geoPoliticalZone})
      : super(key: key);

  final int R;
  final int G;
  final int B;
  final double O;
  final String geoPoliticalZone;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        CircleAvatar(
          radius: size.width / 90,
          backgroundColor: Color.fromRGBO(R, G, B, O),
        ),
        Text(
          geoPoliticalZone,
          style: TextStyle(
            color: const Color.fromRGBO(57, 57, 57, 1),
            fontFamily: 'Poppins',
            fontSize: size.width / 33,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
