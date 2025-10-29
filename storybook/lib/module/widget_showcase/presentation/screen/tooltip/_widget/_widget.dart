part of '../myoro_tooltip_widget_showcase_screen.dart';

/// [WidgetShowcaseScreenConfiguration.widget] of [MyoroTooltipWidgetShowcaseScreen].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroTooltipWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;

    return MyoroTooltip(waitDuration: state.waitDuration, text: state.text, child: const SizedBox.shrink());
  }
}
