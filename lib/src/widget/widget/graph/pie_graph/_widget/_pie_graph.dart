part of '../myoro_pie_graph.dart';

/// Actual graph [Widget] of [MyoroPieGraph].
final class _PieGraph extends StatelessWidget {
  final MyoroPieGraphViewModel _viewModel;

  const _PieGraph(this._viewModel);

  @override
  Widget build(context) {
    return PieChart(
      PieChartData(
        centerSpaceRadius: _viewModel.state.configuration.typeEnum.isPie ? 0 : 100,
        sections: _viewModel.createSections(context),
      ),
    );
  }
}
