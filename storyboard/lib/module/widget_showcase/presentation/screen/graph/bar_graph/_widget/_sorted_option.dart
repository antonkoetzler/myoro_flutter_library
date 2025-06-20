part of '../myoro_bar_graph_widget_showcase_screen.dart';

/// [MyoroBarGraphConfiguration.sorted] option of [MyoroBarGraphWidgetShowcaseScreen].
final class _SortedOption extends StatelessWidget {
  const _SortedOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroBarGraphWidgetShowcaseScreenViewModel>();

    return MyoroCheckbox(
      configuration: MyoroCheckboxConfiguration(label: 'Sorted?', onChanged: (value) => viewModel.state.sorted = value),
    );
  }
}
