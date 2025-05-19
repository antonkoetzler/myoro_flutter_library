part of '../myoro_bar_graph.dart';

/// Controller of [MyoroBarGraph].
class MyoroBarGraphController {
  final MyoroBarGraphConfiguration _configuration;

  const MyoroBarGraphController(this._configuration);

  List<BarChartGroupData> getFormattedItems(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroBarGraphThemeExtension>();

    return _configuration.items
        .map<BarChartGroupData>(
          (MyoroBarGraphGroup group) => BarChartGroupData(
            x: group.x,
            barRods:
                group.bars.map<BarChartRodData>((MyoroBarGraphBar bar) {
                  return BarChartRodData(
                    toY: bar.y,
                    color: bar.color ?? themeExtension.barColor,
                    borderRadius: themeExtension.barBorderRadius,
                    rodStackItems:
                        bar.barSections.isEmpty
                            ? null
                            : bar.barSections.map<BarChartRodStackItem>((MyoroBarGraphBarSection barSection) {
                              return BarChartRodStackItem(barSection.fromY, barSection.toY, barSection.color);
                            }).toList(),
                  );
                }).toList(),
          ),
        )
        .toList()
      ..sort((a, b) => !_configuration.sorted ? a.x : a.x.compareTo(b.x));
  }
}
