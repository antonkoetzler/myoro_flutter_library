part of '../myoro_pie_graph.dart';

/// Actual graph [Widget] of [MyoroPieGraph].
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
