part of '../myoro_bar_graph_widget_showcase_screen.dart';

/// [WidgetShowcaseScreenConfiguration.widget] of [MyoroBarGraphWidgetShowcaseScreen].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroBarGraphWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;

    return ListenableBuilder(
      listenable: state,
      builder: (_, __) {
        final sorted = state.sorted;
        final items = state.items;
        return MyoroBarGraph(sorted: sorted, items: items);
      },
    );
  }
}
