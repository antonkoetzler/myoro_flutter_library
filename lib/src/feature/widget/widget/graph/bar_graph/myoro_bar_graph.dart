import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

part '_widget/_side_title.dart';

/// A bar graph.
class MyoroBarGraph extends StatelessWidget {
  const MyoroBarGraph({super.key, required this.configuration, this.style = const MyoroBarGraphStyle()});

  /// Configuration.
  final MyoroBarGraphConfiguration configuration;

  /// Style.
  final MyoroBarGraphStyle style;

  @override
  Widget build(context) {
    final viewModel = MyoroBarGraphViewModel(configuration);

    final themeExtension = context.resolveThemeExtension<MyoroBarGraphThemeExtension>();
    final border = style.border ?? themeExtension.border;
    final sideTitleInterval = style.sideTitleInterval ?? themeExtension.sideTitleInterval;
    final horizontalSideTitleReversedSize =
        style.horizontalSideTitleReversedSize ?? themeExtension.horizontalSideTitleReversedSize;
    final verticalSideTitleReversedSize =
        style.verticalSideTitleReversedSize ?? themeExtension.verticalSideTitleReversedSize;

    final borderData = FlBorderData(border: border);
    const gridData = FlGridData(show: false);
    const disabledTitle = AxisTitles(sideTitles: SideTitles());
    final enabledTitle = AxisTitles(sideTitles: SideTitles(showTitles: true, interval: sideTitleInterval));

    return InheritedProvider.value(
      value: style,
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
                  reservedSize: horizontalSideTitleReversedSize,
                  getTitlesWidget: (value, _) => _SideTitle(value, Axis.horizontal),
                ),
              ),
              leftTitles: enabledTitle.copyWith(
                sideTitles: enabledTitle.sideTitles.copyWith(
                  reservedSize: verticalSideTitleReversedSize,
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
