part of '../myoro_input_widget_showcase.dart';

/// [MyoroInputConfiguration.labelTextStyle] option of [MyoroInputWidgetShowcase].
final class _LabelTextStyleOption extends StatelessWidget {
  const _LabelTextStyleOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroInputWidgetShowcaseViewModel>();

    return TextStyleWidgetShowcaseOption(
      label: 'Text style of the label.',
      onChanged: (textStyle) => viewModel.state.labelTextStyle = textStyle,
    );
  }
}
