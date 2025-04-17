import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// A pie (or donut if specified) chart.
class MyoroPieGraph extends StatelessWidget {
  /// Pie/donut enum.
  final MyoroPieGraphEnum typeEnum;

  /// If [typeEnum] is [MyoroPieGraphEnum.donut],
  /// this will place a [Widget] inside of the graph.
  final Widget? centerWidget;

  /// Items of the graph.
  final List<MyoroPieGraphItem> items;

  MyoroPieGraph(
    this.typeEnum, {
    super.key,
    this.centerWidget,
    required this.items,
  }) : assert(
         typeEnum.isPie ? centerWidget == null : true,
         '[MyoroPieGraph]: If [typeEnum.isPie] is [true], [centerWidget] cannot be provided.',
       );

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        _PieGraph(typeEnum, items),
        if (centerWidget != null) centerWidget!,
      ],
    );
  }
}

final class _PieGraph extends StatelessWidget {
  final MyoroPieGraphEnum _typeEnum;
  final List<MyoroPieGraphItem> _items;

  const _PieGraph(this._typeEnum, this._items);

  @override
  Widget build(BuildContext context) {
    final themeExtension =
        context.resolveThemeExtension<MyoroPieGraphThemeExtension>();

    return PieChart(
      PieChartData(
        centerSpaceRadius: _typeEnum.isPie ? 0 : 100,
        sections:
            _items.map<PieChartSectionData>((MyoroPieGraphItem item) {
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
