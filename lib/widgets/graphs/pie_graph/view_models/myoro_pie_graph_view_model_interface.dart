import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

/// Interface of [MyoroPieGraphController].
abstract interface class MyoroPieGraphViewModelInterface {
  /// Creates the sections of the [MyoroPieGraph].
  List<PieChartSectionData> createSections(BuildContext context);
}
