import 'package:bloom/components/utilities/my_spacers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:bloom/components/team_animation_components/singleframe_all_team_faces.dart';
import 'package:bloom/components/team_animation_components/team_details.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher_string.dart';

const String ourWebsiteURL = 'http://api.bloomloadanalysis.ng/energy-data/';
const String ourWhatsappURL =
    "https://api.whatsapp.com/send/?phone=2348101564160";

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({Key? key}) : super(key: key);
//--------------------------------------------------------------------------------------

  void goToOurWebsite(String ourWebsiteUrl) {
    try {
      launchUrlString(ourWebsiteUrl);
    } catch (e) {
      throw 'Could not launch $ourWebsiteUrl';
    }
  }

  void goToOurWhatsapp(String ourWhatsappUrl) {
    try {
      launchUrlString(ourWhatsappUrl,
          mode: LaunchMode.externalNonBrowserApplication,
          webViewConfiguration: const WebViewConfiguration(
            enableJavaScript: false,
          ));
    } catch (e) {
      throw 'Could not launch $ourWhatsappUrl';
    }
  }
//--------------------------------------------------------------------------------------

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
                Image(
                  image: const AssetImage("images/yellowbulb.png"),
                  width: size.width / 8,
                  height: size.width / 8,
                ),
                const Spacer2(),
                //----------------------------------***************************---------------------------------------------

                const Text(
                  "About us",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Color.fromRGBO(31, 31, 31, 1),
                  ),
                ),
                const Spacer1(),
                //---------------------------------------------------------------------------------------------------------

                SizedBox(
                  width: size.width,
                  child: const Text(
                    "Making energy data visualization accessible",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Color.fromRGBO(31, 31, 31, 1),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const Spacer1(),
                //---------------------------------------------------------------------------------------------------------

                SizedBox(
                  width: size.width,
                  child: Wrap(
                    children: const [
                      Text(
                        'Naturally, it is supposed that the famous ship sailed by the hero'
                        ' Theseus in a great battle was kept in a harbor as a museum piece,'
                        ' and as the years went by some of the wooden parts began to rot and'
                        ' were replaced by new ones; then, after a century or so, every part'
                        ' had been replaced. The question then is whether the "restored" ship'
                        ' is still the same object as the original.',
                        style: TextStyle(
                          color: Color.fromRGBO(57, 57, 57, 1),
                          fontFamily: 'Poppins',
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer3(),
                //----------------------------------***************************---------------------------------------------

                const Text(
                  "The Team",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Color.fromRGBO(31, 31, 31, 1),
                  ),
                ),
                const Spacer2(),

                Center(child: widgetofTeamFaces(imageName)),
                const Spacer3(),
                //----------------------------------***************************---------------------------------------------

                const Text(
                  "Contact Us",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Color.fromRGBO(31, 31, 31, 1),
                  ),
                ),
                const Spacer1(),

                Row(
                  children: [
                    const Icon(
                      CupertinoIcons.globe,
                      size: 22,
                      color: Colors.grey,
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 0),
                      width: size.width * 0.7,
                      child: RichText(
                        text: TextSpan(
                          text: 'Website: ',
                          style: const TextStyle(
                            fontFamily: 'Poppins',
                            color: Color.fromRGBO(31, 31, 31, 1),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: "www.bloom.ng",
                              style: const TextStyle(
                                fontFamily: 'Poppins',
                                color: Colors.orange,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  goToOurWebsite(ourWebsiteURL);
                                },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const Spacer0(),

                Row(
                  children: [
                    const Icon(
                      FontAwesomeIcons.whatsappSquare,
                      size: 22,
                      color: Colors.green,
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 0),
                      width: size.width * 0.7,
                      child: RichText(
                        text: TextSpan(
                          text: 'Whatsapp: ',
                          style: const TextStyle(
                            fontFamily: 'Poppins',
                            color: Color.fromRGBO(31, 31, 31, 1),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: "+2348101564160",
                              style: const TextStyle(
                                fontFamily: 'Poppins',
                                color: Colors.orange,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  goToOurWhatsapp(ourWhatsappURL);
                                },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const Spacer1(),
                //---------------------------------------------------------------------------------------------------------
              ],
            ),
          ),
        ),
      ),
    );
  }
}
