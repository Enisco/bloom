import 'package:flutter/material.dart';
import 'package:bloom/components/my_spacers.dart';
import 'package:bloom/components/dashboard_components/silverlist_containers.dart';
import 'package:bloom/components/dashboard_components/consumption_summary_container.dart';
import 'package:bloom/components/dashboard_components/six_geo_bar_chart_container.dart';

String dashboardTopText = 'Here is the data of your personal power consumption '
    'as well as the summary data across the six (6) '
    'geopolitical zones in Nigeria.';

class MySliverList extends StatefulWidget {
  const MySliverList({Key? key}) : super(key: key);

  @override
  _MySliverListState createState() => _MySliverListState();
}

class _MySliverListState extends State<MySliverList> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    //-------------------------------******--------------------------------------

    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) => Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(size.width / 14, size.width / 40,
                  size.width / 14, size.width / 20),
              child: Column(
                children: [
                  //---------------------------------------------------------------------

                  Column(
                    children: [
                      ConstrainedBox(
                        constraints: BoxConstraints(
                          maxWidth: size.width,
                          maxHeight: size.height / 10,
                        ),
                        child: Text(
                          dashboardTopText,
                          style: TextStyle(
                            fontFamily: 'Poppins',
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
                    ],
                  ),
                  const Spacer2(),
                  //---------------------------------------------------------------------

                  Row(
                    children: [
                      Text(
                        "Energy Data Visualization",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(31, 31, 31, 1),
                          fontSize: size.height / 38,
                        ),
                      ),
                    ],
                  ),
                  const Spacer2(),
                  //---------------------------------------------------------------------

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      ConsumptionSummaryContainer(),
                      SixGeoBarChartContainer(),
                    ],
                  ),
                  const Spacer1(),
                  //---------------------------------------------------------------------

                  Container(
                    color: Colors.greenAccent,
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
            ),
          ],
        ),
        childCount: 1,
      ),
    );
  }
}
