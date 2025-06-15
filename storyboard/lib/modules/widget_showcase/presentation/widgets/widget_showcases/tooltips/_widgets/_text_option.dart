part of '../myoro_tooltip_widget_showcase.dart';

/// [MyoroTooltipConfiguration.text] option of [MyoroTooltipWidgetShowcase].
final class _TextOption extends StatelessWidget {
  const _TextOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroTooltipWidgetShowcaseViewModel>();

    return MyoroInput(
      configuration: MyoroInputConfiguration(
        label: 'Text in the tooltip.',
        onChanged: (text) => viewModel.state.text = text,
      ),
    );
  }
}
