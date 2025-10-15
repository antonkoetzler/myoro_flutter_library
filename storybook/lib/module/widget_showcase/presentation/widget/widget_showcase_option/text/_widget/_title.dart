part of '../text_widget_showcase_option.dart';

/// Title of [TextWidgetShowcaseOption].
final class _Title extends StatelessWidget {
  const _Title();

  @override
  Widget build(context) {
    final checkboxThemeExtension = context.resolveThemeExtension<MyoroCheckboxThemeExtension>();
    final viewModel = context.read<TextWidgetShowcaseOptionViewModel>();
    return Text(viewModel.configuration.label, style: checkboxThemeExtension.labelTextStyle);
  }
}
