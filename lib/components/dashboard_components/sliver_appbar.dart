import 'package:bloom/components/utilities/profile_image_avatar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:icon_badge/icon_badge.dart';

String userFirstName = "Iremide";
const String collapedAppBarTitle = 'Bloom';
int itemcount = 0;
int tapcount = 0;
var top = 0.0;
var appbarThreshold = 110.0;

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
      leadingWidth: size.width / 4,
      collapsedHeight: size.height / 11.5,
      expandedHeight: size.height / 7.5,
      backgroundColor: Colors.white,
      pinned: true,
      leading: TextButton(
        child: const DashboardProfileImage(),
        onPressed: () {
          print("Hello");
        },
      ),
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
          top = constraints.biggest.height;

          return FlexibleSpaceBar(
            title: AnimatedOpacity(
              duration: const Duration(milliseconds: 300),
              opacity: 1.0,
              child: Text(
                top < appbarThreshold
                    ? collapedAppBarTitle
                    : 'Welcome, $userFirstName',
                style: TextStyle(
                    fontSize: top < appbarThreshold ? 20 : 15,
                    color: const Color.fromRGBO(31, 31, 31, 1),
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700),
              ),
            ),
            titlePadding: top < appbarThreshold
                ? EdgeInsets.fromLTRB(
                    size.width / 4.9, 0.0, 0.0, size.height / 30)
                : EdgeInsets.fromLTRB(size.width / 14, 0.0, 0.0, 0.0),
          );
        },
      ),
    );
  }
}