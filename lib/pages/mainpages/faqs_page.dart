// ignore_for_file: use_key_in_widget_constructors, camel_case_types

import 'package:bloom/components/utilities/my_spacers.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:bloom/components/faqs.dart';
import 'package:outline_search_bar/outline_search_bar.dart';

class FAQs_page extends StatelessWidget {
  const FAQs_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image(
              image: const AssetImage("images/home_bloomapp.png"),
              width: size.width,
              height: size.height / 6,
            ),
            const Spacer1(),
            //---------------------------------------------------------------------------------------------------------

            const Padding(
              padding: EdgeInsets.only(
                bottom: 10.0,
              ),
              child: Text(
                "Frequently Asked Questions",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Color.fromRGBO(31, 31, 31, 1),
                ),
              ),
            ),
            const Spacer1(),
            //---------------------------------------------------------------------------------------------------------

            OutlineSearchBar(
              elevation: 1.0,
              margin: EdgeInsets.only(
                left: size.width / 14,
                right: size.width / 14,
                bottom: 10,
              ),
              cursorColor: Colors.black54,
              cursorHeight: 20.0,
              hintText: 'Search FAQs',
              hintStyle: const TextStyle(
                fontFamily: 'Poppins',
                color: Color.fromRGBO(204, 204, 204, 1),
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
              searchButtonIconColor: const Color.fromRGBO(204, 204, 204, 1),
              backgroundColor: const Color.fromRGBO(250, 250, 250, 1),
              borderColor: Colors.grey[50],
              borderRadius: const BorderRadius.all(
                Radius.circular(10.0),
              ),
            ),
            //---------------------------------------------------------------------------------------------------------

            Container(
              padding: const EdgeInsets.all(10.0),
              child: ExpandableTheme(
                data: const ExpandableThemeData(
                  iconColor: Colors.black12,
                  useInkWell: true,
                ),
                child: ListView.builder(
                  physics: const ClampingScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  padding: const EdgeInsets.all(8),
                  itemCount: qnA.length,
                  itemBuilder: (BuildContext context, index) {
                    return Faq(
                      questionString: qnA[index].questionText,
                      answerString: qnA[index].questionAnswer,
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}