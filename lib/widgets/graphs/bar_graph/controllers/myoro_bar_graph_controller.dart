import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Controller of [MyoroBarGraph].
class MyoroBarGraphController implements MyoroBarGraphInterface {
  MyoroBarGraphController({required MyoroBarGraphConfiguration configuration}) {
    state = MyoroBarGraphState(configuration);
  }

  late final MyoroBarGraphState state;

  @override
  List<BarChartGroupData> getFormattedItems(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroBarGraphThemeExtension>();

    return state.configuration.items
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
      ..sort((a, b) => !state.configuration.sorted ? a.x : a.x.compareTo(b.x));
  }
}
