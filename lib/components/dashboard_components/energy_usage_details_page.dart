import 'package:bloom/components/utilities/my_spacers.dart';
import 'package:flutter/material.dart';
import 'package:bloom/components/dashboard_components/active_power_energy_chart.dart';

class EnergyDetailsPage extends StatefulWidget {
  const EnergyDetailsPage({Key? key}) : super(key: key);

  @override
  _EnergyDetailsPageState createState() => _EnergyDetailsPageState();
}

class _EnergyDetailsPageState extends State<EnergyDetailsPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            color: Colors.black87,
            onPressed: () {
              Navigator.pop(context);
            }),
        backgroundColor: Colors.white,
        shadowColor: Colors.black54,
        title: const Text(
          "Consumed Energy Details",
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
              "Here is the details of the energy you have consumed over time.",
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
                  // color: const Color.fromRGBO(252, 252, 252, 1),
                  color: Colors.grey.withOpacity(0.1),
                  borderRadius:
                      BorderRadius.all(Radius.circular(size.width / 40)),
                ),
                width: size.width,
                height: size.height / 1.5,
                child: const EnergyLineChart(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
