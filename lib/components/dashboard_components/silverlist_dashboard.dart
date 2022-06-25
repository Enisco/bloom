import 'package:bloom/components/utilities/my_spacers.dart';
import 'package:flutter/material.dart';
import 'package:bloom/components/dashboard_components/silverlist_toptwo_containers.dart';
// import 'package:bloom/components/dashboard_components/six_geo_bar_chart_container.dart';
import 'package:bloom/components/dashboard_components/current_power_supply_container.dart';
import 'package:bloom/components/dashboard_components/active_power_energy_chart.dart';

String dashboardTopText =
    'Here is the data of your personal power consumption.';

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
                      SizedBox(
                        width: size.width,
                        child: Text(
                          dashboardTopText,
                          style: const TextStyle(
                            fontFamily: 'Poppins',
                            color: Color.fromRGBO(57, 57, 57, 1),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      const Spacer2(),
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
                        "Current Power Data",
                        style: TextStyle(
                          color: const Color.fromRGBO(57, 57, 57, 1),
                          fontFamily: 'Poppins',
                          fontSize: size.width / 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  const Spacer2(),
                  const CurrentPowerSupplyContainer(),
                  const Spacer2(),
                  //---------------------------------------------------------------------

                  Container(
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(252, 252, 252, 1),
                      borderRadius:
                          BorderRadius.all(Radius.circular(size.width / 40)),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "Energy Data Visualization",
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                color: const Color.fromRGBO(31, 31, 31, 1),
                                fontSize: size.height / 43,
                              ),
                            ),
                          ],
                        ),
                        const Spacer2(),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.1),
                            borderRadius: BorderRadius.all(
                                Radius.circular(size.width / 40)),
                          ),
                          width: size.width,
                          child: Column(
                            children: [
                              Text(
                                "Active Power Chart",
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                  color: const Color.fromRGBO(31, 31, 31, 1),
                                  fontSize: size.height / 43,
                                ),
                              ),
                              const SpacerSmall(),
                              Container(
                                color: Colors.white70,
                                height: size.height / 2,
                                width: size.width,
                                child: const ActivePowerLineChart(),
                              ),
                              const Spacer1(),
                              //-------------------------------------------------------------------

                              Text(
                                "Accumulated Energy Chart",
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                  color: const Color.fromRGBO(31, 31, 31, 1),
                                  fontSize: size.height / 43,
                                ),
                              ),
                              const SpacerSmall(),
                              Container(
                                color: Colors.white70,
                                height: size.height / 2,
                                width: size.width,
                                child: const EnergyLineChart(),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer1(),
                  //---------------------------------------------------------------------
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
