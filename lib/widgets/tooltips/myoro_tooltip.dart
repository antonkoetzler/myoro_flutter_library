import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Simple tooltip.
class MyoroTooltip extends StatelessWidget {
  /// Margin [EdgeInsets] of the tooltip.
  final EdgeInsets? margin;

  /// [Duration] before the tooltip message is shown.
  final Duration? waitDuration;

  /// Text of the tooltip.
  final String text;

  /// [Widget] wrapping the tooltip.
  final Widget child;

  const MyoroTooltip({
    super.key,
    this.text = '',
    this.waitDuration,
    this.margin,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    final themeExtension =
        context.resolveThemeExtension<MyoroTooltipThemeExtension>();
    return Tooltip(
      message: text,
      waitDuration: waitDuration ?? themeExtension.waitDuration,
      margin: margin ?? themeExtension.margin,
      child: child,
    );
  }
}
