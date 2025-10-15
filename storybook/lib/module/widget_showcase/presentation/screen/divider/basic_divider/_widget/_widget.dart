part of '../myoro_basic_divider_widget_showcase_screen.dart';

/// [WidgetShowcaseScreenConfiguration.widget] of [MyoroBasicDividerWidgetShowcaseScreen].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroBasicDividerWidgetShowcaseScreenViewModel>();
    final buildStyle = viewModel.buildStyle;
    final state = viewModel.state;

    return ListenableBuilder(
      listenable: state,
      builder: (_, __) {
        final direction = state.direction;
        return MyoroBasicDivider(direction, style: buildStyle(context));
      },
    );
  }
}
