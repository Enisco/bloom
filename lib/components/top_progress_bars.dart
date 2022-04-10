import 'package:flutter/material.dart';

class TopProgressLineBeginning extends StatelessWidget {
  const TopProgressLineBeginning({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
        Size size = MediaQuery.of(context).size;

    return Container(
      width: ((size.width - (size.width / 7)) / 3) *
                  1, //the 1 is for the length
              height: size.height / 110,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.amber,
              ),
    );
  }
}

class TopProgressLineMiddle extends StatelessWidget {
  const TopProgressLineMiddle({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
        Size size = MediaQuery.of(context).size;

    return Container(
      width: ((size.width - (size.width / 7)) / 3) *
                  2, //the 2 is for the length
              height: size.height / 110,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.amber,
              ),
    );
  }
}
 
class TopProgressLineCompleted extends StatelessWidget {
  const TopProgressLineCompleted({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
        Size size = MediaQuery.of(context).size;

    return Container(
      width: ((size.width - (size.width / 7)) / 3) *
                  3, //the 2 is for the length
              height: size.height / 110,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.amber,
              ),
    );
  }
}
