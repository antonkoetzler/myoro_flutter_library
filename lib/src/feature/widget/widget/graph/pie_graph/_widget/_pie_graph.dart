part of '../widget/myoro_pie_graph.dart';

/// Actual graph [Widget] of [MyoroPieGraph].
final class _PieGraph extends StatelessWidget {
  const _PieGraph(this._typeEnum, this._items);

  final MyoroPieGraphEnum _typeEnum;
  final List<MyoroPieGraphItem> _items;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroPieGraphThemeExtension>();
    final style = context.watch<MyoroPieGraphStyle>();
    final sections = _items.map<PieChartSectionData>((MyoroPieGraphItem item) {
      return PieChartSectionData(
        showTitle: false,
        value: item.value,
        color: item.color ?? style.itemColor ?? themeExtension.itemColor,
        radius: item.radius ?? style.itemRadius ?? themeExtension.itemRadius,
      );
    }).toList();
    return PieChart(PieChartData(centerSpaceRadius: _typeEnum.isPie ? 0 : 100, sections: sections));
  }
}
