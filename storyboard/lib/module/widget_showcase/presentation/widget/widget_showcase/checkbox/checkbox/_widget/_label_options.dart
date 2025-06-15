part of '../myoro_checkbox_widget_showcase.dart';

/// [MyoroCheckboxConfiguration.labelTextStyle] option of [MyoroCheckboxWidgetShowcase].
final class _LabelOptions extends StatelessWidget {
  const _LabelOptions();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroCheckboxWidgetShowcaseViewModel>();

    return TextWidgetShowcaseOption(
      configuration: TextWidgetShowcaseOptionConfiguration(
        textOnChanged: (text) => viewModel.label = text,
        styleOnChanged: (textStyle) => viewModel.labelTextStyle = textStyle,
      ),
    );
  }
}
