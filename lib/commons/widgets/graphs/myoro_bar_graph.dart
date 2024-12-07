import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

/// A bar graph.
final class MyoroBarGraph extends StatelessWidget {
  const MyoroBarGraph({super.key});

  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(),
    );
  }
}
