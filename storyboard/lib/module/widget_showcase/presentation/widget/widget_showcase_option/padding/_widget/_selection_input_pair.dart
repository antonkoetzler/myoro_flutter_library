part of '../padding_widget_showcase_option.dart';

/// Pair of [_SelectionInput]s.
final class _SelectionInputPair extends StatelessWidget {
  const _SelectionInputPair({
    required this.leftLabel,
    required this.leftOnChanged,
    required this.leftValue,
    required this.rightLabel,
    required this.rightOnChanged,
    required this.rightValue,
  });

  /// Label of the left [_SelectionInput].
  final String leftLabel;

  /// [PaddingWidgetShowcaseOptionSelectionInputOnChanged] of the left [_SelectionInput].
  final PaddingWidgetShowcaseOptionSelectionInputOnChanged leftOnChanged;

  /// [String] of the left [_SelectionInput].
  final double leftValue;

  /// Label of the right [_SelectionInput].
  final String rightLabel;

  /// [PaddingWidgetShowcaseOptionSelectionInputOnChanged] of the right [_SelectionInput].
  final PaddingWidgetShowcaseOptionSelectionInputOnChanged rightOnChanged;

  /// [String] of the right [_SelectionInput].
  final double rightValue;

  @override
  Widget build(context) {
    final widgetShowcaseThemeExtension = context.resolveThemeExtension<WidgetShowcaseThemeExtension>();

    return Row(
      spacing: widgetShowcaseThemeExtension.spacing,
      children: [
        Expanded(child: _SelectionInput(label: leftLabel, onChanged: leftOnChanged, value: leftValue)),
        Expanded(child: _SelectionInput(label: rightLabel, onChanged: rightOnChanged, value: rightValue)),
      ],
    );
  }
}
