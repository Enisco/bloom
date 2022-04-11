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
  late List<LiveData> chartData;
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
        series: <SplineSeries<LiveData, int>>[
          SplineSeries<LiveData, int>(
            onRendererCreated: (ChartSeriesController controller) {
              _chartSeriesController = controller;
            },
            dataSource: chartData,
            color: Colors.blue,
            xValueMapper: (LiveData sales, _) => sales.time,
            yValueMapper: (LiveData sales, _) => sales.speed,
          )
        ],
        primaryXAxis: NumericAxis(
          majorGridLines: const MajorGridLines(width: 0),
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
    chartData.add(LiveData(time++, (math.Random().nextInt(40) + 199)));
    chartData.removeAt(0);
    _chartSeriesController.updateDataSource(
        addedDataIndex: chartData.length - 1, removedDataIndex: 0);
  }

  List<LiveData> getChartData() {
    return <LiveData>[
      LiveData(0, 42),
      LiveData(1, 47),
      LiveData(2, 43),
      LiveData(3, 49),
      LiveData(4, 54),
      LiveData(5, 41),
      LiveData(6, 58),
      LiveData(7, 51),
      LiveData(8, 98),
      LiveData(9, 41),
      LiveData(10, 53),
      LiveData(11, 72),
      LiveData(12, 86),
      LiveData(13, 52),
      LiveData(14, 94),
      LiveData(15, 92),
      LiveData(16, 86),
      LiveData(17, 72),
      LiveData(18, 94)
    ];
  }
}

class LiveData {
  LiveData(this.time, this.speed);
  final int time;
  final num speed;
}

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
            color: Colors.blue,
            xValueMapper: (LiveDataV sales, _) => sales.time,
            yValueMapper: (LiveDataV sales, _) => sales.speed,
          )
        ],
        primaryXAxis: NumericAxis(
          majorGridLines: const MajorGridLines(width: 0),
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
    chartData.add(LiveDataV(time++, (math.Random().nextInt(40) + 200)));
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
