part of '../myoro_input_widget_showcase_screen.dart';

/// [MyoroInputConfiguration.inputTextStyle] option of [MyoroInputWidgetShowcaseScreen].
final class _InputTextStyleOption extends StatelessWidget {
  const _InputTextStyleOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroInputWidgetShowcaseScreenViewModel>();

    return TextStyleWidgetShowcaseOption(
      label: 'Text style of input text.',
      onChanged: (textStyle) => viewModel.state.inputTextStyle = textStyle,
    );
  }
}
