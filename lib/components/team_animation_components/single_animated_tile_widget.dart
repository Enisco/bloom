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
      width: size.width / 2.5,
      height: size.height / 3,
      child: InkWell(
        onTap: openContainer,
        child: Column(
          children: <Widget>[
            Center(
              child: Image.asset(
                imageName,
                width: size.width / 2.5,
                height: size.height / 3.8,
              ),
            ),
            SizedBox(height: size.width / 60),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  nameText,
                  style: Theme.of(context).textTheme.subtitle2,
                ),
                SizedBox(height: size.width / 60),
                Text(roleText, style: Theme.of(context).textTheme.caption),
              ],
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
      width: size.width - (size.width / 14),
      height: size.height / 2.5,
      child: InkWell(
        onTap: openContainer,
        child: Column(
          children: <Widget>[
            SizedBox(height: size.width / 60),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Center(
                  child: Image.asset(
                    imageName,
                    width: size.width - (size.width / 40),
                    height: size.height / 3.0,
                  ),
                ),
                SizedBox(height: size.width / 60),
                Text(
                  nameText,
                  style: Theme.of(context).textTheme.subtitle2,
                ),
                SizedBox(height: size.width / 60),
                Text(roleText, style: Theme.of(context).textTheme.caption),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
