import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

/// Simple tooltip.
class MyoroTooltip extends StatelessWidget {
  /// Default value of [style].
  static const styleDefaultValue = MyoroTooltipStyle();

  /// Default value of [waitDuration].
  static const waitDurationDefaultValue = kMyoroTooltipWaitDuration;

  /// Default value of [text].
  static const textDefaultValue = kMyoroEmptyString;

  /// Default constructor.
  const MyoroTooltip({
    super.key,
    this.style = styleDefaultValue,
    this.waitDuration = waitDurationDefaultValue,
    this.text = textDefaultValue,
    required this.child,
  });

  /// Style.
  final MyoroTooltipStyle style;

  /// [Duration] before the tooltip message is shown.
  final Duration waitDuration;

  /// Text of the tooltip.
  final String text;

  /// [Widget] utilizing the [MyoroTooltip].
  final Widget child;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroTooltipThemeExtension>();
    final margin = style.margin ?? themeExtension.margin;

    return Provider.value(
      value: style,
      child: Tooltip(message: text, waitDuration: waitDuration, margin: margin, child: child),
    );
  }
}
