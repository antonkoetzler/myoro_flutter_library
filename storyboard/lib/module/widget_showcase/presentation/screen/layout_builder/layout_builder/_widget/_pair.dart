part of '../myoro_layout_builder_widget_showcase_screen.dart';

/// Pair of [BoxConstraints] values, a pair between either the min/max constraints of the width or height.
final class _Pair extends StatelessWidget {
  const _Pair({required this.minString, required this.maxString});

  final String minString;
  final String maxString;

  @override
  Widget build(context) {
    final widgetShowcaseThemeExtension = context.resolveThemeExtension<WidgetShowcaseThemeExtension>();

    return Column(
      mainAxisSize: MainAxisSize.min,
      spacing: widgetShowcaseThemeExtension.spacing,
      children: [
        Flexible(child: _PairText(minString)),
        Flexible(child: _PairText(maxString)),
      ],
    );
  }
}
