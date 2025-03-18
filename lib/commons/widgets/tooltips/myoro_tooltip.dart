import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Simple tooltip.
final class MyoroTooltip extends StatelessWidget {
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

  static Finder finder({
    EdgeInsets? margin,
    bool marginEnabled = false,
    Duration? waitDuration,
    bool waitDurationEnabled = false,
    String? text,
    bool textEnabled = false,
    Widget? child,
    bool childEnabled = false,
  }) {
    return find.byWidgetPredicate(
      (Widget w) =>
          w is MyoroTooltip &&
          (marginEnabled ? w.margin == margin : true) &&
          (waitDurationEnabled ? w.waitDuration == waitDuration : true) &&
          (textEnabled ? w.text == text : true) &&
          (childEnabled ? w.child == child : true),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: text,
      waitDuration: waitDuration ??
          context
              .resolveThemeExtension<MyoroTooltipThemeExtension>()
              .waitDuration,
      margin: margin,
      child: child,
    );
  }
}
