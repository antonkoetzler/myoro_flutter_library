part of '../myoro_button_widget_showcase_screen.dart';

/// [Widget] of [MyoroButtonWidgetShowcaseScreen].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroButtonWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;
    final onTapDown = state.onTapDownEnabled ? (_) => viewModel.onTapDown(context) : null;
    final onTapUp = state.onTapUpEnabled ? (_) => viewModel.onTapUp(context) : null;
    final tooltipConfiguration = state.tooltipEnabled ? MyoroTooltipConfiguration.fake() : null;
    final cursor = state.cursor;
    final style = viewModel.style;
    final isLoading = state.isLoading;

    return ListenableBuilder(
      listenable: viewModel.state,
      builder: (_, _) {
        return MyoroButton(
          style: style,
          tooltipConfiguration: tooltipConfiguration,
          cursor: cursor,
          onTapDown: onTapDown,
          onTapUp: onTapUp,
          isLoading: isLoading,
          builder: (_, tapStatusEnum) => _ButtonContent(tapStatusEnum),
        );
      },
    );
  }
}
