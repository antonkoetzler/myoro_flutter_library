import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part '_widget/_side_title.dart';

/// A bar graph.
class MyoroBarGraph extends StatelessWidget {
  const MyoroBarGraph({super.key, required this.configuration, this.themeExtension});

  /// Configuration.
  final MyoroBarGraphConfiguration configuration;

  /// Theme extension.
  final MyoroBarGraphThemeExtension? themeExtension;

  @override
  Widget build(context) {
    final viewModel = MyoroBarGraphViewModel(configuration);

    final colorScheme = context.colorScheme;
    final textTheme = context.textTheme;
    final themeExtension = this.themeExtension ?? MyoroBarGraphThemeExtension.builder(colorScheme, textTheme);

    final borderData = FlBorderData(border: themeExtension.border);
    const gridData = FlGridData(show: false);
    const disabledTitle = AxisTitles(sideTitles: SideTitles());
    final enabledTitle = AxisTitles(
      sideTitles: SideTitles(showTitles: true, interval: themeExtension.sideTitleInterval),
    );

    return MyoroSingularThemeExtensionWrapper(
      themeExtension: themeExtension,
      child: Padding(
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
      ),
    );
  }
}
