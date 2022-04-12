import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'dart:async';
import 'dart:math' as math;

class ActivePowerLineChart extends StatefulWidget {
  const ActivePowerLineChart({Key? key}) : super(key: key);

  @override
  _ActivePowerLineChartState createState() => _ActivePowerLineChartState();
}

class _ActivePowerLineChartState extends State<ActivePowerLineChart> {
  late List<LiveDataP> chartData;
  late ChartSeriesController _chartSeriesController;

  @override
  void initState() {
    chartData = getChartData();
    Timer.periodic(const Duration(seconds: 5), updateDataSource);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height / 9.5,
      width: size.width / 2.40,
      child: SfCartesianChart(
        series: <SplineSeries<LiveDataP, int>>[
          SplineSeries<LiveDataP, int>(
            onRendererCreated: (ChartSeriesController controller) {
              _chartSeriesController = controller;
            },
            dataSource: chartData,
            color: Colors.blue,
            xValueMapper: (LiveDataP sales, _) => sales.time,
            yValueMapper: (LiveDataP sales, _) => sales.speed,
          )
        ],
        primaryXAxis: NumericAxis(
          majorGridLines: const MajorGridLines(width: 0),
          edgeLabelPlacement: EdgeLabelPlacement.none,
          interval: 3,
          title: AxisTitle(text: 'Time'),
        ),
        primaryYAxis: NumericAxis(
          axisLine: const AxisLine(width: 0),
          majorTickLines: const MajorTickLines(size: 0),
          title: AxisTitle(text: 'kw'),
        ),
      ),
    );
  }

  int time = 19;
  double lastData = 4.16;
  void updateDataSource(Timer timer) {
    lastData = ((math.Random().nextInt(8000) / 10000) + 0.5);
    chartData.add(LiveDataP(time++, lastData));
    chartData.removeAt(0);
    _chartSeriesController.updateDataSource(
        addedDataIndex: chartData.length - 1, removedDataIndex: 0);
  }

  List<LiveDataP> getChartData() {
    return <LiveDataP>[
      LiveDataP(0, 4.0),
      LiveDataP(1, 4.0),
      LiveDataP(2, 4.1),
      LiveDataP(3, 4.11),
      LiveDataP(4, 4.11),
      LiveDataP(5, 4.12),
      LiveDataP(6, 4.13),
      LiveDataP(6, 4.13),
      LiveDataP(7, 4.13),
      LiveDataP(8, 4.13),
      LiveDataP(9, 4.14),
      LiveDataP(10, 4.14),
      LiveDataP(11, 4.14),
      LiveDataP(12, 4.14),
      LiveDataP(13, 4.15),
      LiveDataP(14, 4.15),
      LiveDataP(15, 4.15),
      LiveDataP(16, 4.15),
      LiveDataP(17, 4.15),
      LiveDataP(18, 4.16),
    ];
  }
}

class LiveDataP {
  LiveDataP(this.time, this.speed);
  final int time;
  final num speed;
}

//******************************************************************************************* */

class EnergyLineChart extends StatefulWidget {
  const EnergyLineChart({Key? key}) : super(key: key);

  @override
  _EnergyLineChartState createState() => _EnergyLineChartState();
}

class _EnergyLineChartState extends State<EnergyLineChart> {
  late List<LiveDataE> chartData;
  late ChartSeriesController _chartSeriesController;

  @override
  void initState() {
    chartData = getChartData();
    Timer.periodic(const Duration(seconds: 5), updateDataSource);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height / 9.5,
      width: size.width / 2.40,
      child: SfCartesianChart(
        series: <SplineSeries<LiveDataE, int>>[
          SplineSeries<LiveDataE, int>(
            onRendererCreated: (ChartSeriesController controller) {
              _chartSeriesController = controller;
            },
            dataSource: chartData,
            color: Colors.red,
            xValueMapper: (LiveDataE sales, _) => sales.time,
            yValueMapper: (LiveDataE sales, _) => sales.speed,
          ),
        ],
        primaryXAxis: NumericAxis(
          majorGridLines: const MajorGridLines(width: 0),
          edgeLabelPlacement: EdgeLabelPlacement.none,
          interval: 3,
          title: AxisTitle(text: 'Time'),
        ),
        primaryYAxis: NumericAxis(
          axisLine: const AxisLine(width: 0),
          majorTickLines: const MajorTickLines(size: 0),
          title: AxisTitle(text: 'Energy (kw/h)'),
        ),
      ),
    );
  }

  int time = 19;
  double lastData = 4.16;
  void updateDataSource(Timer timer) {
    lastData = lastData + (math.Random().nextInt(30) / 1000);
    chartData.add(LiveDataE(time++, lastData));
    // latestData = lastData;
    chartData.removeAt(0);
    _chartSeriesController.updateDataSource(
        addedDataIndex: chartData.length - 1, removedDataIndex: 0);
  }

  List<LiveDataE> getChartData() {
    return <LiveDataE>[
      LiveDataE(0, 4.0),
      LiveDataE(1, 4.0),
      LiveDataE(2, 4.1),
      LiveDataE(3, 4.11),
      LiveDataE(4, 4.11),
      LiveDataE(5, 4.12),
      LiveDataE(6, 4.13),
      LiveDataE(6, 4.13),
      LiveDataE(7, 4.13),
      LiveDataE(8, 4.13),
      LiveDataE(9, 4.14),
      LiveDataE(10, 4.14),
      LiveDataE(11, 4.14),
      LiveDataE(12, 4.14),
      LiveDataE(13, 4.15),
      LiveDataE(14, 4.15),
      LiveDataE(15, 4.15),
      LiveDataE(16, 4.15),
      LiveDataE(17, 4.15),
      LiveDataE(18, 4.16),
    ];
  }
}

class LiveDataE {
  LiveDataE(this.time, this.speed);
  final int time;
  final num speed;
}
//******************************************************************************************* */

class VoltageLineChart extends StatefulWidget {
  const VoltageLineChart({Key? key}) : super(key: key);

  @override
  _VoltageLineChartState createState() => _VoltageLineChartState();
}

class _VoltageLineChartState extends State<VoltageLineChart> {
  late List<LiveDataV> chartData;
  late ChartSeriesController _chartSeriesController;

  @override
  void initState() {
    chartData = getChartDataV();
    Timer.periodic(const Duration(seconds: 5), updateDataSource);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height / 8,
      width: size.width / 2.20,
      child: SfCartesianChart(
        series: <SplineSeries<LiveDataV, int>>[
          SplineSeries<LiveDataV, int>(
            onRendererCreated: (ChartSeriesController controller) {
              _chartSeriesController = controller;
            },
            dataSource: chartData,
            color: Colors.redAccent,
            xValueMapper: (LiveDataV sales, _) => sales.time,
            yValueMapper: (LiveDataV sales, _) => sales.speed,
          )
        ],
        primaryXAxis: NumericAxis(
          majorGridLines: const MajorGridLines(width: 1),
          edgeLabelPlacement: EdgeLabelPlacement.none,
          interval: 3,
          // title: AxisTitle(text: ''),
        ),
        primaryYAxis: NumericAxis(
          axisLine: const AxisLine(width: 0),
          majorTickLines: const MajorTickLines(size: 0),
          // title: AxisTitle(text: 'kw/h'),
        ),
      ),
    );
  }

  int time = 19;
  void updateDataSource(Timer timer) {
    chartData.add(LiveDataV(time++, (math.Random().nextInt(20) + 210)));
    chartData.removeAt(0);
    _chartSeriesController.updateDataSource(
        addedDataIndex: chartData.length - 1, removedDataIndex: 0);
  }

  List<LiveDataV> getChartDataV() {
    return <LiveDataV>[
      LiveDataV(0, 42),
      LiveDataV(1, 47),
      LiveDataV(2, 43),
      LiveDataV(3, 49),
      LiveDataV(4, 54),
      LiveDataV(5, 41),
      LiveDataV(6, 58),
      LiveDataV(7, 51),
      LiveDataV(8, 98),
      LiveDataV(9, 41),
      LiveDataV(10, 53),
      LiveDataV(11, 72),
      LiveDataV(12, 86),
      LiveDataV(13, 52),
      LiveDataV(14, 94),
      LiveDataV(15, 92),
      LiveDataV(16, 86),
      LiveDataV(17, 72),
      LiveDataV(18, 94)
    ];
  }
}

class LiveDataV {
  LiveDataV(this.time, this.speed);
  final int time;
  final num speed;
}
