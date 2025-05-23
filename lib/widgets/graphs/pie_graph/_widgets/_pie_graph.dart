part of '../myoro_pie_graph.dart';

/// Actual graph [Widget] of [MyoroPieGraph].
final class _PieGraph extends StatelessWidget {
  final MyoroPieGraphController _controller;

  const _PieGraph(this._controller);

  @override
  Widget build(BuildContext context) {
    return PieChart(
      PieChartData(
        centerSpaceRadius: _controller.state.configuration.typeEnum.isPie ? 0 : 100,
        sections: _controller.createSections(context),
      ),
    );
  }
}
