// ignore_for_file: use_key_in_widget_constructors

import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class Faq extends StatelessWidget {
  final String questionString;
  final String answerString;

  const Faq({
    required this.questionString,
    required this.answerString,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return ExpandableNotifier(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(

            bottom: BorderSide(width: 2.0, color: Colors.grey.shade200),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: ScrollOnExpand(
            scrollOnExpand: true,
            scrollOnCollapse: true,
            child: ExpandablePanel(
              theme: const ExpandableThemeData(
                iconColor: Colors.black54,
                iconSize: 25.0,
                headerAlignment: ExpandablePanelHeaderAlignment.center,
                tapBodyToCollapse: true,
              ),
              header: Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                    right: 10,
                  ),
                  child: Text(
                    questionString,
                    style: TextStyle(
                      fontFamily: 'SourceSansPro',
                      fontSize: size.height / 45,
                      fontWeight: FontWeight.w600,
                      color: Colors.black54,
                    ),
                  )),
              collapsed: const Padding(
                padding: EdgeInsets.only(
                  left: 10,
                  right: 10,
                ),
              ),
              expanded: Text(
                answerString,
                style: TextStyle(
                  fontFamily: 'SourceSerifPro',
                  fontSize: size.height / 45,
                  fontWeight: FontWeight.w300,
                  color: Colors.black54,
                ),
                softWrap: true,
                overflow: TextOverflow.fade,
              ),
              builder: (_, collapsed, expanded) {
                return Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                    right: 10,
                  ),
                  child: Expandable(
                    collapsed: collapsed,
                    expanded: expanded,
                    theme: const ExpandableThemeData(crossFadePoint: 0),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

class FAQuestionsAndAnswers {
  String questionText = '';
  String questionAnswer = '';

  FAQuestionsAndAnswers(
      {required this.questionText, required this.questionAnswer});
}

final List<FAQuestionsAndAnswers> qnA = [
  FAQuestionsAndAnswers(
      questionText: "What is Bloom?",
      questionAnswer:
          "Some cats are actually allergic to humans. Approximately one quarter of human bones are in the feet. A slug's blood is green."),
  FAQuestionsAndAnswers(
      questionText: 'What Problem is Bloom solving',
      questionAnswer:
          "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog. It is illegal to pee in the Ocean in Portugal."),
  FAQuestionsAndAnswers(
      questionText: 'How many states is Bloom deploying to this year?',
      questionAnswer:
          "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place."),
  FAQuestionsAndAnswers(
      questionText: "Who handles the data for Bloom?",
      questionAnswer:
          "No piece of square dry paper can be folded in half more than 7 times. The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant."),
  FAQuestionsAndAnswers(
      questionText: "Where is Bloom Headquareters?",
      questionAnswer:
          "The total surface area of two human lungs is approximately 70 square metres. Google was originally called 'Backrub'. In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat."),
];
