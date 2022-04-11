// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:bloom/components/dashboard_components/dashboard_sliver_appbar.dart';
import 'package:bloom/components/dashboard_components/dashboard_silverlist.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    //------------------------------*************************----------------------------------

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
