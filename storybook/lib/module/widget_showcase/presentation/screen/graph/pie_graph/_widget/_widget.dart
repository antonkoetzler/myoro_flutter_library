part of '../myoro_pie_graph_widget_showcase_screen.dart';

/// [WidgetShowcaseScreenConfiguration.widget] of [MyoroPieGraphWidgetShowcaseScreen].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroPieGraphWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;

    return ListenableBuilder(
      listenable: state,
      builder: (_, __) {
        final typeEnum = state.typeEnum;
        final centerWidgetEnabled = state.centerWidgetEnabled;

        return MyoroPieGraph(
          typeEnum: typeEnum,
          centerWidget: centerWidgetEnabled ? const _CenterWidget() : null,
          items: List.generate(faker.randomGenerator.integer(5), (_) => MyoroPieGraphItem.fake()),
        );
      },
    );
  }
}
