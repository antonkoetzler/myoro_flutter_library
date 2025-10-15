part of '../myoro_checkbox_widget_showcase_screen.dart';

/// [MyoroCheckboxConfiguration.labelTextStyle] option of [MyoroCheckboxWidgetShowcaseScreen].
final class _LabelOptions extends StatelessWidget {
  const _LabelOptions();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroCheckboxWidgetShowcaseScreenViewModel>();

    return TextWidgetShowcaseOption(
      configuration: TextWidgetShowcaseOptionConfiguration(
        textOnChanged: (text) => viewModel.state.label = text,
        styleOnChanged: (textStyle) => viewModel.state.labelTextStyle = textStyle,
      ),
    );
  }
}
