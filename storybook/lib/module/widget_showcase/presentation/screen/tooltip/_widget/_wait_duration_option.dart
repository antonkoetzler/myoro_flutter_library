part of '../myoro_tooltip_widget_showcase_screen.dart';

/// [MyoroTooltipConfiguration.waitDuration] option of [MyoroTooltipWidgetShowcaseScreen].
final class _WaitDurationOption extends StatelessWidget {
  const _WaitDurationOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroTooltipWidgetShowcaseScreenViewModel>();

    return MyoroNumberInput(
      max: 10,
      label: 'Wait duration in seconds.',
      onChanged: (text) => viewModel.state.waitDuration = Duration(seconds: int.parse(text)),
    );
  }
}
