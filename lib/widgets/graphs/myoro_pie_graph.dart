import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// A pie (or donut if specified) chart.
class MyoroPieGraph extends StatelessWidget {
  /// Configuration.
  final MyoroPieGraphConfiguration configuration;

  const MyoroPieGraph({super.key, required this.configuration});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [_PieGraph(configuration), if (configuration.centerWidget != null) configuration.centerWidget!],
    );
  }
}

final class _PieGraph extends StatelessWidget {
  final MyoroPieGraphConfiguration _configuration;

  const _PieGraph(this._configuration);

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroPieGraphThemeExtension>();

    return PieChart(
      PieChartData(
        centerSpaceRadius: _configuration.typeEnum.isPie ? 0 : 100,
        sections:
            _configuration.items.map<PieChartSectionData>((MyoroPieGraphItem item) {
              return PieChartSectionData(
                showTitle: false,
                value: item.value,
                color: item.color ?? themeExtension.itemColor,
                radius: item.radius ?? themeExtension.itemRadius,
              );
            }).toList(),
      ),
    );
  }
}
