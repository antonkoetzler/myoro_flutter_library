import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

part '../_widget/_pie_graph.dart';

/// A pie (or donut if specified) chart.
class MyoroPieGraph extends StatelessWidget {
  /// Default value of [style].
  static const styleDefaultValue = MyoroPieGraphStyle();

  /// Default value of [typeEnum].
  static const typeEnumDefaultValue = MyoroPieGraphEnum.pie;

  /// Default value of [items].
  static const itemsDefaultValue = <MyoroPieGraphItem>[];

  const MyoroPieGraph({super.key, this.style = styleDefaultValue, this.typeEnum = typeEnumDefaultValue, this.centerWidget, this.items = itemsDefaultValue});

  /// Style.
  final MyoroPieGraphStyle style;

  /// Pie/donut enum.
  final MyoroPieGraphEnum typeEnum;

  /// If [typeEnum] is [MyoroPieGraphEnum.donut],
  /// this will place a [Widget] inside of the graph.
  final Widget? centerWidget;

  /// Items of the graph.
  final List<MyoroPieGraphItem> items;

  @override
  Widget build(context) {
    return InheritedProvider.value(
      value: style,
      child: Stack(alignment: Alignment.center, children: [_PieGraph(typeEnum, items), if (centerWidget != null) centerWidget!]),
    );
  }
}
