part of '../padding_widget_showcase_option.dart';

/// Pair of [_SelectionInput]s.
final class _SelectionInputPair extends StatelessWidget {
  const _SelectionInputPair({
    required this.leftLabel,
    required this.leftOnChanged,
    required this.rightLabel,
    required this.rightOnChanged,
  });

  /// Label of the left [_SelectionInput].
  final String leftLabel;

  /// [PaddingWidgetShowcaseOptionSelectionInputOnChanged] of the left [_SelectionInput].
  final PaddingWidgetShowcaseOptionSelectionInputOnChanged leftOnChanged;

  /// Label of the right [_SelectionInput].
  final String rightLabel;

  /// [PaddingWidgetShowcaseOptionSelectionInputOnChanged] of the right [_SelectionInput].
  final PaddingWidgetShowcaseOptionSelectionInputOnChanged rightOnChanged;

  @override
  Widget build(context) {
    final widgetShowcaseThemeExtension = context.resolveThemeExtension<WidgetShowcaseThemeExtension>();

    return Row(
      spacing: widgetShowcaseThemeExtension.spacing,
      children: [
        Expanded(child: _SelectionInput(label: leftLabel, onChanged: leftOnChanged)),
        Expanded(child: _SelectionInput(label: rightLabel, onChanged: rightOnChanged)),
      ],
    );
  }
}
