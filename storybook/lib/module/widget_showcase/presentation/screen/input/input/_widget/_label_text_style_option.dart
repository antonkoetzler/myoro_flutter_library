part of '../myoro_input_widget_showcase_screen.dart';

/// [MyoroInputConfiguration.labelTextStyle] option of [MyoroInputWidgetShowcaseScreen].
final class _LabelTextStyleOption extends StatelessWidget {
  const _LabelTextStyleOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroInputWidgetShowcaseScreenViewModel>();

    return TextStyleWidgetShowcaseOption(
      label: 'Text style of the label.',
      onChanged: (textStyle) => viewModel.state.labelTextStyle = textStyle,
    );
  }
}
