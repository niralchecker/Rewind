import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ChartWidget extends StatelessWidget {
  const ChartWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<ChartData> chartData = [
      ChartData(2010, 0),
      ChartData(2011, 8),
      ChartData(2012, 20),
      ChartData(2013, 1),
      ChartData(2014, 40),
      ChartData(2015, 30),
    ];

    return SizedBox(
        height: 200,
        width: 300,
        child: SfCartesianChart(series: <ChartSeries>[
          // Renders line chart
          LineSeries<ChartData, int>(
              dataSource: chartData,
              xValueMapper: (ChartData data, _) => data.x,
              yValueMapper: (ChartData data, _) => data.y)
        ]));
  }
}

class ChartData {
  ChartData(this.x, this.y);

  final int x;
  final int y;
}
