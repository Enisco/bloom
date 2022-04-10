// ignore_for_file: use_key_in_widget_constructors, camel_case_types

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:bloom/components/my_spacers.dart';
import 'package:bloom/components/team_animation_components/singleframe_all_team_faces.dart';
import 'package:bloom/components/team_animation_components/team_details.dart';
// import 'package:bloom/components/top_progress_bars.dart';

String ourWebsiteUrl = 'http://www.google.com';
String ourWhatsappUrl =
    'https://api.whatsapp.com/send?phone=2348101564160&text=Welcome%20to%20Bloom?%20How%20can%20we%20help%20you?';
//--------------------------------------------------------------------------------------

void goToOurWebsite(String ourWebsiteUrl) async {
  if (await canLaunch(ourWebsiteUrl)) {
    await launch(
      ourWebsiteUrl,
    );
  } else {
    throw 'Could not launch $ourWebsiteUrl';
  }
}

void goToOurWhatsapp(String ourWhatsappUrl) async {
  if (await canLaunch(ourWhatsappUrl)) {
    await launch(
      ourWhatsappUrl,
    );
  } else {
    throw 'Could not launch $ourWhatsappUrl';
  }
}
//--------------------------------------------------------------------------------------

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(size.width / 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // TopProgressLineCompleted(),
                Image(
                  image: const AssetImage("images/yellow bulb.png"),
                  width: size.width / 8,
                  height: size.width / 8,
                ),
                const Spacer3(),
                //----------------------------------***************************---------------------------------------------

                Text(
                  "About us",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Roboto',
                    fontSize: size.height / 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer1(),
                //---------------------------------------------------------------------------------------------------------

                ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: size.width - (size.width / 7),
                    maxHeight: size.height / 17,
                  ),
                  child: Text(
                    "Making energy data visualization accessible",
                    style: TextStyle(
                      fontFamily: 'Alata',
                      color: Colors.black87.withOpacity(0.6),
                      fontSize: size.height / 38,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                const Spacer2(),
                //---------------------------------------------------------------------------------------------------------

                ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: size.width - (size.width / 7),
                  ),
                  child: Wrap(
                    children: [
                      Text(
                        'Naturally, it is supposed that the famous ship sailed by the hero'
                        ' Theseus in a great battle was kept in a harbor as a museum piece,'
                        ' and as the years went by some of the wooden parts began to rot and'
                        ' were replaced by new ones; then, after a century or so, every part'
                        ' had been replaced. The question then is whether the "restored" ship'
                        ' is still the same object as the original.',
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.7),
                          fontFamily: 'SourceSansPro',
                          // fontFamily: 'Lato',
                          fontSize: size.height / 40,
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer3(),
                //----------------------------------***************************---------------------------------------------

                Text(
                  "The Team",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Roboto',
                    fontSize: size.height / 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer2(),
                //---------------------------------------------------------------------------------------------------------

                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      border: const Border()),
                  height: size.height / 2,
                  child: widgetofTeamFaces(imageName),
                ),
                //----------------------------------***************************---------------------------------------------

                Text(
                  "Contact Us",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Roboto',
                    fontSize: size.height / 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer2(),
                //---------------------------------------------------------------------------------------------------------

                RichText(
                  text: TextSpan(
                    text: 'Website: ',
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.6),
                      fontSize: size.height / 45,
                      fontWeight: FontWeight.w700,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: ourWebsiteUrl,
                        style: TextStyle(
                          color: Colors.blue.withOpacity(0.6),
                          fontSize: size.height / 45,
                          fontWeight: FontWeight.w700,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            goToOurWebsite(ourWebsiteUrl);
                          },
                      ),
                    ],
                  ),
                ),
                const Spacer1(),
                //---------------------------------------------------------------------------------------------------------

                RichText(
                  text: TextSpan(
                    text: 'Whatsapp: ',
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.6),
                      fontSize: size.height / 45,
                      fontWeight: FontWeight.w700,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: "+2348101564160",
                        style: TextStyle(
                          color: Colors.blue.withOpacity(0.6),
                          fontSize: size.height / 45,
                          fontWeight: FontWeight.w700,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            goToOurWhatsapp(ourWhatsappUrl);
                          },
                      ),
                    ],
                  ),
                ),
                const Spacer3(),
                //---------------------------------------------------------------------------------------------------------
                // const Spacer3(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
