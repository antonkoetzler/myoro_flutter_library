part of '../myoro_radio_widget_showcase_screen.dart';

/// [MyoroRadioConfiguration.labelTextStyle] option of [MyoroRadioWidgetShowcaseScreen].
final class _LabelTextStyleOption extends StatelessWidget {
  const _LabelTextStyleOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroRadioWidgetShowcaseScreenViewModel>();

    return TextStyleWidgetShowcaseOption(onChanged: (style) => viewModel.state.labelTextStyle = style);
  }
}
