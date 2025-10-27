part of '../myoro_bar_graph_widget_showcase_screen.dart';

/// [MyoroBarGraphConfiguration.sorted] option of [MyoroBarGraphWidgetShowcaseScreen].
final class _SortedOption extends StatelessWidget {
  const _SortedOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroBarGraphWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;
    return MyoroCheckbox(label: 'Sorted?', onChanged: (value) => state.sorted = value);
  }
}
