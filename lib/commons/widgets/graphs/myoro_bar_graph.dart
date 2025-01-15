import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// A bar graph.
final class MyoroBarGraph extends StatelessWidget {
  /// If the items of the graph should be sorted.
  final bool sorted;

  /// Items of the graph.
  final List<MyoroBarGraphGroup> items;

  MyoroBarGraph({
    super.key,
    this.sorted = true,
    required this.items,
  }) : assert(
          items.isNotEmpty,
          '[MyoroBarGraph]: [items] must not be empty.',
        );

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroBarGraphThemeExtension>();

    final List<BarChartGroupData> formattedItems = items
        .map<BarChartGroupData>(
          (MyoroBarGraphGroup group) => BarChartGroupData(
            x: group.x,
            barRods: group.bars.map<BarChartRodData>(
              (MyoroBarGraphBar bar) {
                return BarChartRodData(
                  toY: bar.y,
                  color: bar.color ?? themeExtension.barColor,
                  borderRadius: themeExtension.barBorderRadius,
                  rodStackItems: bar.barSections.isEmpty
                      ? null
                      : bar.barSections.map<BarChartRodStackItem>(
                          (MyoroBarGraphBarSection barSection) {
                            return BarChartRodStackItem(
                              barSection.fromY,
                              barSection.toY,
                              barSection.color,
                            );
                          },
                        ).toList(),
                );
              },
            ).toList(),
          ),
        )
        .toList()
      ..sort((a, b) => !sorted ? a.x : a.x.compareTo(b.x));

    final borderData = FlBorderData(border: themeExtension.border);
    const gridData = FlGridData(show: false);
    const disabledTitle = AxisTitles(sideTitles: SideTitles());
    final enabledTitle = AxisTitles(
      sideTitles: SideTitles(
        showTitles: true,
        interval: themeExtension.sideTitleInterval,
      ),
    );

    return Padding(
      padding: const EdgeInsets.only(top: 22),
      child: BarChart(
        BarChartData(
          // Items of the graph.
          barGroups: formattedItems,

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

final class _SideTitle extends StatelessWidget {
  final double _value;
  final Axis _axis;

  const _SideTitle(this._value, this._axis);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: _axis.isVertical ? 5 : 0,
      ),
      child: Text(
        _value.toStringAsFixed(_value == 0 || _value == _value.toInt() ? 0 : 2),
        textAlign: TextAlign.right,
        style: context.resolveThemeExtension<MyoroBarGraphThemeExtension>().sideTitleTextStyle,
      ),
    );
  }
}
