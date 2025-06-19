part of '../myoro_layout_builder_widget_showcase.dart';

/// Pair of [BoxConstraints] values, a pair between either the min/max constraints of the width or height.
final class _Pair extends StatelessWidget {
  const _Pair({required this.minString, required this.maxString});

  final String minString;
  final String maxString;

  @override
  Widget build(BuildContext context) {
    final widgetShowcaseOptionThemeExtension = context.resolveThemeExtension<WidgetShowcaseOptionThemeExtension>();

    return Column(
      mainAxisSize: MainAxisSize.min,
      spacing: widgetShowcaseOptionThemeExtension.spacing,
      children: [Flexible(child: _PairText(minString)), Flexible(child: _PairText(maxString))],
    );
  }
}
