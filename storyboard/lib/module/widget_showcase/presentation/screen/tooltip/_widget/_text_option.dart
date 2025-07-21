part of '../myoro_tooltip_widget_showcase_screen.dart';

/// [MyoroTooltipConfiguration.text] option of [MyoroTooltipWidgetShowcaseScreen].
final class _TextOption extends StatelessWidget {
  const _TextOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroTooltipWidgetShowcaseScreenViewModel>();

    return MyoroInput(
      configuration: MyoroInputConfiguration(
        label: 'Text in the tooltip.',
        onChanged: (text) => viewModel.state.text = text,
      ),
    );
  }
}
