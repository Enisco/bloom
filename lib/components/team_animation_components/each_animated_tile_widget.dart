// ignore_for_file: use_key_in_widget_constructors, unused_element, must_be_immutable

import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

ContainerTransitionType _transitionType = ContainerTransitionType.fade;
int index = 0;

class TeamFacesSummaryTileWidget extends StatelessWidget {
  TeamFacesSummaryTileWidget({
    required this.openContainer,
    required this.imageName,
    required this.imageIndex,
  });
  final VoidCallback openContainer;
  final String imageName;
  int imageIndex = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.all(size.width / 120),
      width: size.width / 5.5,
      height: size.width / 5.5,
      child: InkWell(
        onTap: openContainer,
        child: Column(
          children: <Widget>[
            Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              runAlignment: WrapAlignment.spaceEvenly,
              children: <Widget>[
                Center(
                  child: Image.asset(
                    imageName,
                    width: size.width / 5.5,
                    height: size.width / 5.5,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
//---------------------------------------------------------------------------------------------

class SingleAnimatedTileWidget extends StatelessWidget {
  const SingleAnimatedTileWidget({
    required this.openContainer,
    required this.imageName,
    required this.nameText,
    required this.roleText,
  });
  final VoidCallback openContainer;
  final String imageName;
  final String nameText;
  final String roleText;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.all(size.width / 200),
      width: size.width / 2.4,
      child: InkWell(
        onTap: openContainer,
        child: Column(
          children: <Widget>[
            Center(
              child: Container(
                padding: const EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 16, 42, 54),
                  border: Border.all(
                      width: 1.0, color: const Color.fromARGB(255, 16, 42, 54)),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                child: Image.asset(
                  imageName,
                  width: size.width / 2.5,
                  height: size.height / 4.5,
                ),
              ),
            ),
            const SizedBox(height: 5),
            Text(
              nameText,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 14,
                color: Color.fromRGBO(57, 57, 57, 1),
              ),
            ),
            const SizedBox(height: 3),
            Text(
              roleText,
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .copyWith(color: Colors.grey[700]),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

//---------------------------------------------------------------------------------------------

class DrMrsAnimatedTileWidget extends StatelessWidget {
  const DrMrsAnimatedTileWidget({
    required this.openContainer,
    required this.imageName,
    required this.nameText,
    required this.roleText,
  });
  final VoidCallback openContainer;
  final String imageName;
  final String nameText;
  final String roleText;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.all(size.width / 80),
      width: size.width * 0.6,
      height: size.height / 3.0,
      child: InkWell(
        onTap: openContainer,
        child: Column(
          children: <Widget>[
            SizedBox(height: size.width / 60),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Center(
                  child: Container(
                    padding: const EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 16, 42, 54),
                      border: Border.all(
                          width: 1.0,
                          color: const Color.fromARGB(255, 16, 42, 54)),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    child: Image.asset(
                      imageName,
                      width: size.width / 2.5,
                      height: size.height / 4.5,
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  nameText,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: Color.fromRGBO(57, 57, 57, 1),
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 3),
                Text(
                  roleText,
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall!
                      .copyWith(color: Colors.grey[700]),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
