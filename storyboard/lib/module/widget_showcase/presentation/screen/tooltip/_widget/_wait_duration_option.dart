part of '../myoro_tooltip_widget_showcase_screen.dart';

/// [MyoroTooltipConfiguration.waitDuration] option of [MyoroTooltipWidgetShowcaseScreen].
final class _WaitDurationOption extends StatelessWidget {
  const _WaitDurationOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroTooltipWidgetShowcaseScreenViewModel>();

    return MyoroInput.number(
      configuration: MyoroInputConfiguration(
        label: 'Wait duration in seconds.',
        onChanged: (text) => viewModel.state.waitDuration = Duration(seconds: int.parse(text)),
      ),
    );
  }
}
