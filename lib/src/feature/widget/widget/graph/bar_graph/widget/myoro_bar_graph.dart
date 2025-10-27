import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

part '../_widget/_side_title.dart';

/// A bar graph.
class MyoroBarGraph extends StatelessWidget {
  /// Default value of [style].
  static const styleDefaultValue = MyoroBarGraphStyle();

  /// Default value of [sorted].
  static const sortedDefaultValue = true;

  /// Default value of [items].
  static const itemsDefaultValue = <MyoroBarGraphGroup>[];

  const MyoroBarGraph({
    super.key,
    this.style = styleDefaultValue,
    this.sorted = sortedDefaultValue,
    this.items = itemsDefaultValue,
  });

  /// Style.
  final MyoroBarGraphStyle style;

  /// If the items of the graph should be sorted.
  final bool sorted;

  /// Items of the graph.
  final List<MyoroBarGraphGroup> items;

  @override
  Widget build(context) {
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

    final items =
        this.items
            .map<BarChartGroupData>(
              (MyoroBarGraphGroup group) => BarChartGroupData(
                x: group.x,
                barRods: group.bars.map<BarChartRodData>((MyoroBarGraphBar bar) {
                  return BarChartRodData(
                    toY: bar.y,
                    color: bar.color ?? themeExtension.barColor,
                    borderRadius: themeExtension.barBorderRadius,
                    rodStackItems: bar.barSections.isEmpty
                        ? null
                        : bar.barSections.map<BarChartRodStackItem>((MyoroBarGraphBarSection barSection) {
                            return BarChartRodStackItem(barSection.fromY, barSection.toY, barSection.color);
                          }).toList(),
                  );
                }).toList(),
              ),
            )
            .toList()
          ..sort((a, b) => !sorted ? a.x : a.x.compareTo(b.x));

    return InheritedProvider.value(
      value: style,
      child: Padding(
        padding: const EdgeInsets.only(top: 22),
        child: BarChart(
          BarChartData(
            // Items of the graph.
            barGroups: items,

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
