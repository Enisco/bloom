// ignore_for_file: use_key_in_widget_constructors, camel_case_types

import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:bloom/components/faqs.dart';
import 'package:bloom/components/my_spacers.dart';
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

            Padding(
              padding: const EdgeInsets.only(
                bottom: 10.0,
              ),
              child: Text(
                "Frequently Asked Questions",
                style: TextStyle(
                  fontFamily: 'SourceSerifPro',
                  fontSize: size.height / 45,
                  fontWeight: FontWeight.w300,
                  color: Colors.black54,
                ),
              ),
            ),
            const Spacer1(),
            //---------------------------------------------------------------------------------------------------------

            Container(
              width: size.width - (size.width / 7),
              height: size.height / 18,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: const BorderRadius.all(Radius.circular(10.0)),
              ),
              child: OutlineSearchBar(
                cursorColor: Colors.black54,
                cursorHeight: 20.0,
                hintText: 'Search FAQs',
                hintStyle: TextStyle(
                  color: Colors.grey[400],
                  fontSize: size.height / 50,
                ),
                searchButtonIconColor: Colors.grey[400],
                backgroundColor: Colors.grey[200],
                borderColor: Colors.grey[200],
                borderRadius: const BorderRadius.all(
                  Radius.circular(10.0),
                ),
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
