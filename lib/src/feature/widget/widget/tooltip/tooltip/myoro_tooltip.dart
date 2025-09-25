import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

/// Simple tooltip.
class MyoroTooltip extends StatelessWidget {
  const MyoroTooltip({
    super.key,
    required this.configuration,
    required this.child,
    this.style = const MyoroTooltipStyle(),
  });

  /// Configuration.
  final MyoroTooltipConfiguration configuration;

  /// [Widget] utilizing the [MyoroTooltip].
  final Widget child;

  /// Style.
  final MyoroTooltipStyle style;

  @override
  Widget build(context) {
    final style = this.style;
    final themeExtension = context.resolveThemeExtension<MyoroTooltipThemeExtension>();
    final margin = style.margin ?? themeExtension.margin;

    return Provider.value(
      value: style,
      child: Tooltip(
        message: configuration.text,
        waitDuration: configuration.waitDuration,
        margin: margin,
        child: child,
      ),
    );
  }
}
