// ignore_for_file: must_be_immutable

import 'package:bloom/components/my_spacers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:cupertino_icons/cupertino_icons.dart';

class DetailsOfPersonsPage extends StatelessWidget {
  DetailsOfPersonsPage({
    Key? key,
    required this.nameText,
    required this.imageName,
    required this.detailsOfPersonText,
  }) : super(key: key);

  String nameText;
  String imageName;
  String detailsOfPersonText;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                CupertinoIcons.chevron_down,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        title: Text(nameText),
        backgroundColor: Colors.amber[900],
      ),
      body: Container(
        decoration: const BoxDecoration(
          // border: Border.all(color: Colors.black45, width: 3.0),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
          color: Colors.white60,
        ),
        //*************************************************************************

        child: ListView(
          children: <Widget>[
            const Spacer2(),
            Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white54,
              ),
              height: size.height / 3,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset(
                  imageName,
                ),
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(height: 10),
                  Text(
                    detailsOfPersonText,
                    style: Theme.of(context).textTheme.bodyText2!.copyWith(
                          color: Colors.black54,
                          height: 1.5,
                          fontSize: 16.0,
                        ),
                  ),
                ],
              ),
            ),
            const Spacer3(),
            Center(
              child: Container(
                color: Colors.black45,
                width: size.width - (size.width / 14),
                height: size.width / 150,
                child: Container(
                  color: Colors.black45,
                  width: size.width - (size.width / 9),
                  height: size.width / 150,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
