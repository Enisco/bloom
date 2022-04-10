// ignore_for_file: avoid_print

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bloom/components/profile_image_avatar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:icon_badge/icon_badge.dart';
// import 'package:bloom/components/constants.dart';

String sliverAppBarTitle = "You're in, Iremide";
String collapedAppBarTitle = 'Iremide';
int itemcount = 0;
int tapcount = 0;
var top = 0.0;
var appbarThreshold = 140.0;

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return const Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          MySliverAppBar(),
          MySliverList(),

          //------------------------------*************************----------------------------------
        ], //SliverList          ],
      ),
    );
  }
}

class MySliverAppBar extends StatefulWidget {
  const MySliverAppBar({Key? key}) : super(key: key);

  @override
  _MySliverAppBarState createState() => _MySliverAppBarState();
}

class _MySliverAppBarState extends State<MySliverAppBar> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SliverAppBar(
      centerTitle: true,
      pinned: true,
      leading: TextButton(
        child: const DashboardProfileImage(),
        onPressed: () {
          print("Hello");
        },
      ),
      leadingWidth: size.width / 4,
      collapsedHeight: size.height / 11.5,
      expandedHeight: size.height / 6,
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      //----------------------------------------------------------------------------

      actions: [
        InkWell(
          child: IconBadge(
            onTap: () {
              setState(
                () {
                  tapcount++;
                  itemcount = tapcount % 3;
                  print('Notification Icon tapped');
                },
              );
            },
            icon: const Icon(CupertinoIcons.bell),
            itemCount: itemcount,
            badgeColor: itemcount > 0 ? Colors.red : Colors.green,
            hideZero: false,
            top: size.height / 100,
            right: size.width / 45,
          ),
        ),
      ],
      //----------------------------------------------------------------------------

      flexibleSpace: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          // print('constraints=' + constraints.toString());
          top = constraints.biggest.height;

          return FlexibleSpaceBar(
            // centerTitle: top < appbarThreshold ? true : false,
            title: AnimatedOpacity(
              duration: const Duration(milliseconds: 300),
              opacity: 1.0,
              child: Text(
                top < appbarThreshold ? "Bloom" : "Welcome, Iremide",
                style: TextStyle(
                    fontSize: top < appbarThreshold
                        ? size.height / 30
                        : size.height / 40,
                    color: Colors.black87,
                    fontFamily: 'SourceSansSerif',
                    fontWeight: FontWeight.w700),
              ),
            ),
            titlePadding: top < appbarThreshold
                ? EdgeInsets.fromLTRB(
                    size.width / 4.9, 0.0, 0.0, size.height / 30)
                : EdgeInsets.fromLTRB(
                    size.width / 14, 0.0, 0.0, size.height / 30),
          );
        },
      ),
    );
  }
}

class MySliverList extends StatefulWidget {
  const MySliverList({Key? key}) : super(key: key);

  @override
  _MySliverListState createState() => _MySliverListState();
}

class _MySliverListState extends State<MySliverList> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) => Column(
          children: [
            Container(
              color: Colors.blue,
              height: size.height / 2,
            ),
            Row(
              children: [
                Container(
                  color: Colors.green,
                  height: size.height / 2,
                ),
              ],
            ),
            Container(
              color: Colors.redAccent,
              height: size.height / 2,
            ),
          ],
        ), //ListTile
        childCount: 1,
      ),
    );
  }
}
