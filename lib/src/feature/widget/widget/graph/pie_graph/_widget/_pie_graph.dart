part of '../myoro_pie_graph.dart';

/// Actual graph [Widget] of [MyoroPieGraph].
final class _PieGraph extends StatelessWidget {
  const _PieGraph();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroPieGraphViewModel>();

    return PieChart(
      PieChartData(
        centerSpaceRadius: viewModel.state.configuration.typeEnum.isPie ? 0 : 100,
        sections: viewModel.createSections(context),
      ),
    );
  }
}
