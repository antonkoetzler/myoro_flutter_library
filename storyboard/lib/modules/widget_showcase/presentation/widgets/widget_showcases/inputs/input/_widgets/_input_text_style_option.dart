part of '../myoro_input_widget_showcase.dart';

/// [MyoroInputConfiguration.inputTextStyle] option of [MyoroInputWidgetShowcase].
final class _InputTextStyleOption extends StatelessWidget {
  const _InputTextStyleOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroInputWidgetShowcaseViewModel>();

    return TextStyleWidgetShowcaseOption(
      label: 'Text style of input text.',
      onChanged: (textStyle) => viewModel.state.inputTextStyle = textStyle,
    );
  }
}
