// ignore_for_file: avoid_print

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:bloom/components/dashboard_components/dashboard_sliver_appbar.dart';
import 'package:bloom/components/dashboard_components/dashboard_silverlist.dart';


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
