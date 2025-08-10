import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

part '_widget/_side_title.dart';

/// A bar graph.
class MyoroBarGraph extends MyoroStatelessWidget {
  const MyoroBarGraph({super.key, super.createViewModel, required this.configuration});

  /// Configuration.
  final MyoroBarGraphConfiguration configuration;

  @override
  Widget build(context) {
    final viewModel = (createViewModel ? MyoroBarGraphViewModel() : context.read<MyoroBarGraphViewModel>())
      ..configuration = configuration;

    final themeExtension = context.resolveThemeExtension<MyoroBarGraphThemeExtension>();

    final borderData = FlBorderData(border: themeExtension.border);
    const gridData = FlGridData(show: false);
    const disabledTitle = AxisTitles(sideTitles: SideTitles());
    final enabledTitle = AxisTitles(
      sideTitles: SideTitles(showTitles: true, interval: themeExtension.sideTitleInterval),
    );

    return Padding(
      padding: const EdgeInsets.only(top: 22),
      child: BarChart(
        BarChartData(
          // Items of the graph.
          barGroups: viewModel.getFormattedItems(context),

          // Border of the graph.
          borderData: borderData,

          // Grid information of the graph.
          gridData: gridData,

          // Label configuration.
          titlesData: FlTitlesData(
            topTitles: disabledTitle,
            bottomTitles: enabledTitle.copyWith(
              sideTitles: enabledTitle.sideTitles.copyWith(
                reservedSize: themeExtension.horizontalSideTitleReversedSize,
                getTitlesWidget: (value, _) => _SideTitle(value, Axis.horizontal),
              ),
            ),
            leftTitles: enabledTitle.copyWith(
              sideTitles: enabledTitle.sideTitles.copyWith(
                reservedSize: themeExtension.verticalSideTitleReversedSize,
                getTitlesWidget: (value, _) => _SideTitle(value, Axis.vertical),
              ),
            ),
            rightTitles: disabledTitle,
          ),
        ),
      ),
    );
  }
}
