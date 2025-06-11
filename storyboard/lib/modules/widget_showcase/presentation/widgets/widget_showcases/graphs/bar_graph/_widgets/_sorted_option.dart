part of '../myoro_bar_graph_widget_showcase.dart';

/// [MyoroBarGraphConfiguration.sorted] option of [MyoroBarGraphWidgetShowcase].
final class _SortedOption extends StatelessWidget {
  const _SortedOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroBarGraphWidgetShowcaseViewModel>();

    return MyoroCheckbox(
      configuration: MyoroCheckboxConfiguration(label: 'Sorted?', onChanged: (value) => viewModel.state.sorted = value),
    );
  }
}
