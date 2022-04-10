import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bloom/components/my_spacers.dart';
import 'package:bloom/components/dashboard_components/silverlist_containers.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:animations/animations.dart';

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
            Padding(
              padding: EdgeInsets.fromLTRB(size.width / 14, size.width / 40,
                  size.width / 14, size.width / 20),
              child: Column(
                children: [
                  Column(
                    children: [
                      ConstrainedBox(
                        constraints: BoxConstraints(
                          maxWidth: size.width,
                          maxHeight: size.height / 10,
                        ),
                        child: Text(
                          'Here is the data of your personal power consumption '
                          'as well as the summary data across the six (6) '
                          'geopolitical zones in Nigeria.',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            // fontFamily: 'Alata',
                            color: Colors.black.withOpacity(0.7),
                            fontSize: size.width / 23,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      const Spacer1(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          EnergyConsumptionContainer(),
                          MetersDetailsContainer(),
                        ],
                      ),
                      const Spacer1(),
                      const Spacer1(),
                      Container(
                        color: Colors.blue,
                        height: size.height / 2,
                        width: size.width,
                      ),
                      const Spacer1(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            color: Colors.greenAccent,
                            height: size.height / 2,
                            width: size.width / 3,
                          ),
                          Container(
                            color: Colors.red,
                            height: size.height / 2,
                            width: size.width / 3,
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        childCount: 1,
      ),
    );
  }
}
