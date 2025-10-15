part of '../box_constraints_widget_showcase_option.dart';

/// Row of 2 [_Selector]s.
final class _SelectorRow extends StatelessWidget {
  const _SelectorRow({
    required this.leftLabel,
    required this.leftController,
    required this.rightLabel,
    required this.rightController,
  });

  final String leftLabel;
  final BoxConstraintsWidgetShowcaseOptionSelectorController leftController;
  final String rightLabel;
  final BoxConstraintsWidgetShowcaseOptionSelectorController rightController;

  @override
  Widget build(context) {
    final widgetShowcaseThemeExtension = context.resolveThemeExtension<WidgetShowcaseThemeExtension>();

    return Row(
      spacing: widgetShowcaseThemeExtension.spacing,
      children: [
        Expanded(child: _Selector(leftLabel, leftController)),
        Expanded(child: _Selector(rightLabel, rightController)),
      ],
    );
  }
}
