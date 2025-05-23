import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

/// Interface of [MyoroBarGraphController].
abstract interface class MyoroBarGraphInterface {
  /// Builds the bar rods.
  List<BarChartGroupData> getFormattedItems(BuildContext context);
}
