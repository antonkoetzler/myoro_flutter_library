part of '../box_constraints_widget_showcase_option.dart';

/// Row of 2 [_Selector]s.
final class _SelectorRow extends StatelessWidget {
  const _SelectorRow({required this.leftConfiguration, required this.rightConfiguration});

  final BoxConstraintsWidgetShowcaseOptionSelectorConfiguration leftConfiguration;
  final BoxConstraintsWidgetShowcaseOptionSelectorConfiguration rightConfiguration;

  @override
  Widget build(BuildContext context) {
    final widgetShowcaseThemeExtension = context.resolveThemeExtension<WidgetShowcaseThemeExtension>();

    return Row(
      spacing: widgetShowcaseThemeExtension.spacing,
      children: [Expanded(child: _Selector(leftConfiguration)), Expanded(child: _Selector(rightConfiguration))],
    );
  }
}
