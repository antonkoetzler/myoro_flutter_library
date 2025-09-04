import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Simple tooltip.
class MyoroTooltip extends StatelessWidget {
  const MyoroTooltip({super.key, required this.configuration, required this.child});

  /// Configuration.
  final MyoroTooltipConfiguration configuration;

  /// [Widget] utilizing the [MyoroTooltip].
  final Widget child;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroTooltipThemeExtension>();
    return Tooltip(
      message: configuration.text,
      waitDuration: configuration.waitDuration,
      margin: configuration.margin ?? themeExtension.margin,
      child: child,
    );
  }
}
