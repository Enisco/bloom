import 'package:bloom/components/dashboard_components/active_power_energy_chart.dart';
import 'package:bloom/components/utilities/my_spacers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ActivePowerDetailsPage extends StatefulWidget {
  const ActivePowerDetailsPage({Key? key}) : super(key: key);

  @override
  State<ActivePowerDetailsPage> createState() => _ActivePowerDetailsPageState();
}

class _ActivePowerDetailsPageState extends State<ActivePowerDetailsPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: const Icon(CupertinoIcons.chevron_down),
            color: Colors.black87,
            onPressed: () {
              Navigator.pop(context);
            }),
        backgroundColor: Colors.white,
        shadowColor: Colors.black54,
        title: const Text(
          "Active Power Details",
          style: TextStyle(
            color: Colors.black87,
            fontFamily: 'Poppins',
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(size.width / 14),
        child: Column(
          children: [
            Text(
              "Here is the details of the power you are consuming right now.",
              style: TextStyle(
                color: Colors.black87,
                fontFamily: 'Poppins',
                fontSize: size.width / 22,
              ),
            ),
            const Spacer3(),
            Center(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.1),
                  borderRadius:
                      BorderRadius.all(Radius.circular(size.width / 40)),
                ),
                width: size.width,
                height: size.height / 1.5,
                child: const ActivePowerLineChart(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
