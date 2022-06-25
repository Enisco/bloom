// ignore_for_file: must_be_immutable

import 'package:bloom/components/utilities/my_spacers.dart';
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
        title: Text(
          nameText,
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.amber[900],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const Spacer2(),
            Container(
              width: size.height / 3,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 16, 42, 54),
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              height: size.height / 3,
              child: Image.asset(
                imageName,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                detailsOfPersonText,
                textAlign: TextAlign.justify,
                style: Theme.of(context).textTheme.bodyText2!.copyWith(
                      height: 1.4,
                      fontSize: 15.0,
                    ),
              ),
            ),
            const Spacer3(),
          ],
        ),
      ),
    );
  }
}
