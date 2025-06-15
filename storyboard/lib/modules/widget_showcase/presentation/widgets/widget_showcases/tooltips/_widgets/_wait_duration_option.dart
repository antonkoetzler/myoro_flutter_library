part of '../myoro_tooltip_widget_showcase.dart';

/// [MyoroTooltipConfiguration.waitDuration] option of [MyoroTooltipWidgetShowcase].
final class _WaitDurationOption extends StatelessWidget {
  const _WaitDurationOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroTooltipWidgetShowcaseViewModel>();

    return MyoroInput.number(
      configuration: MyoroInputConfiguration(
        label: 'Wait duration in seconds.',
        onChanged: (text) => viewModel.state.waitDuration = Duration(seconds: int.parse(text)),
      ),
    );
  }
}
