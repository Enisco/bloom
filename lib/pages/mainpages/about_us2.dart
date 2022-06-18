
// import 'package:flutter/gestures.dart';
// import 'package:flutter/material.dart';
// import 'package:bloom/components/my_spacers.dart';
// import 'package:bloom/components/team_animation_components/singleframe_all_team_faces.dart';
// import 'package:bloom/components/team_animation_components/team_details.dart';
// import 'package:url_launcher/url_launcher_string.dart';
// String ourWebsiteUrl = 'https://api.bloomloadanalysis.ng';
// String ourWhatsappUrl =
//     'https://api.whatsapp.com/send?phone=2348101564160&text=Welcome%20to%20Bloom?%20How%20can%20we%20help%20you?';
// //--------------------------------------------------------------------------------------

// void goToOurWebsite(String ourWebsiteUrl) async {
//   if (await canLaunchUrlString(ourWebsiteUrl)) {
//     await launchUrlString(
//       ourWebsiteUrl,
//     );
//   } else {
//     throw 'Could not launch $ourWebsiteUrl';
//   }
// }

// void goToOurWhatsapp(String ourWhatsappUrl) async {
//   if (await canLaunchUrlString(ourWhatsappUrl)) {
//     await launchUrlString(
//       ourWhatsappUrl,
//     );
//   } else {
//     throw 'Could not launch $ourWhatsappUrl';
//   }
// }
// //--------------------------------------------------------------------------------------

// class AboutUsPage extends StatelessWidget {
//   const AboutUsPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;

//     return SafeArea(
//       child: Scaffold(
//         body: SingleChildScrollView(
//           child: Padding(
//             padding: EdgeInsets.all(size.width / 18),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Image(
//                   image: const AssetImage("images/yellow bulb.png"),
//                   width: size.width / 8,
//                   height: size.width / 8,
//                 ),
//                 const Spacer3(),
//                 //----------------------------------***************************---------------------------------------------

//                 Text(
//                   "About us",
//                   style: TextStyle(
//                     color: const Color.fromRGBO(31, 31, 31, 1),
//                     fontFamily: 'Poppins',
//                     fontSize: size.height / 30,
//                     fontWeight: FontWeight.w700,
//                   ),
//                 ),
//                 const Spacer1(),
//                 //---------------------------------------------------------------------------------------------------------

//                 ConstrainedBox(
//                   constraints: BoxConstraints(
//                     maxWidth: size.width - (size.width / 7),
//                     maxHeight: size.height / 17,
//                   ),
//                   child: Text(
//                     "Making energy data visualization accessible",
//                     style: TextStyle(
//                       fontFamily: 'Poppins',
//                       color: const Color.fromRGBO(31, 31, 31, 1),
//                       fontSize: size.height / 38,
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                 ),
//                 const Spacer2(),
//                 //---------------------------------------------------------------------------------------------------------

//                 ConstrainedBox(
//                   constraints: BoxConstraints(
//                     maxWidth: size.width - (size.width / 7),
//                   ),
//                   child: Wrap(
//                     children: [
//                       Text(
//                         'Naturally, it is supposed that the famous ship sailed by the hero'
//                         ' Theseus in a great battle was kept in a harbor as a museum piece,'
//                         ' and as the years went by some of the wooden parts began to rot and'
//                         ' were replaced by new ones; then, after a century or so, every part'
//                         ' had been replaced. The question then is whether the "restored" ship'
//                         ' is still the same object as the original.',
//                         style: TextStyle(
//                           color: const Color.fromRGBO(57, 57, 57, 1),
//                           fontFamily: 'Poppins',
//                           fontSize: size.height / 40,
//                           fontWeight: FontWeight.w400,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 const Spacer3(),
//                 //----------------------------------***************************---------------------------------------------

//                 Text(
//                   "The Team",
//                   style: TextStyle(
//                     color: const Color.fromRGBO(31, 31, 31, 1),
//                     fontFamily: 'Poppins',
//                     fontSize: size.height / 30,
//                     fontWeight: FontWeight.w700,
//                   ),
//                 ),
//                 const Spacer2(),
//                 //---------------------------------------------------------------------------------------------------------

//                 Container(
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(8.0),
//                       border: const Border()),
//                   height: size.height / 2,
//                   child: widgetofTeamFaces(imageName),
//                 ),
//                 //----------------------------------***************************---------------------------------------------

//                 Text(
//                   "Contact Us",
//                   style: TextStyle(
//                     color: const Color.fromRGBO(31, 31, 31, 1),
//                     fontFamily: 'Poppins',
//                     fontSize: size.height / 30,
//                     fontWeight: FontWeight.w700,
//                   ),
//                 ),
//                 const Spacer2(),
//                 //---------------------------------------------------------------------------------------------------------

//                 RichText(
//                   text: TextSpan(
//                     text: 'Website: ',
//                     style: TextStyle(
//                       fontFamily: 'Poppins',
//                       color: const Color.fromRGBO(31, 31, 31, 1),
//                       fontSize: size.height / 45,
//                       fontWeight: FontWeight.w500,
//                     ),
//                     children: <TextSpan>[
//                       TextSpan(
//                         text: ourWebsiteUrl,
//                         style: TextStyle(
//                           fontFamily: 'Poppins',
//                           color: Colors.blue.withOpacity(0.6),
//                           fontSize: size.height / 45,
//                           fontWeight: FontWeight.w500,
//                         ),
//                         recognizer: TapGestureRecognizer()
//                           ..onTap = () {
//                             goToOurWebsite(ourWebsiteUrl);
//                           },
//                       ),
//                     ],
//                   ),
//                 ),
//                 const Spacer1(),
//                 //---------------------------------------------------------------------------------------------------------

//                 RichText(
//                   text: TextSpan(
//                     text: 'Whatsapp: ',
//                     style: TextStyle(
//                       fontFamily: 'Poppins',
//                       color: const Color.fromRGBO(31, 31, 31, 1),
//                       fontSize: size.height / 45,
//                       fontWeight: FontWeight.w500,
//                     ),
//                     children: <TextSpan>[
//                       TextSpan(
//                         text: "+2348101564160",
//                         style: TextStyle(
//                           fontFamily: 'Poppins',
//                           color: Colors.blue.withOpacity(0.6),
//                           fontSize: size.height / 45,
//                           fontWeight: FontWeight.w500,
//                         ),
//                         recognizer: TapGestureRecognizer()
//                           ..onTap = () {
//                             goToOurWhatsapp(ourWhatsappUrl);
//                           },
//                       ),
//                     ],
//                   ),
//                 ),
//                 const Spacer3(),
//                 //---------------------------------------------------------------------------------------------------------
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
