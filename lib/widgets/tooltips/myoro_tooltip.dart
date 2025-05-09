import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Simple tooltip.
class MyoroTooltip extends StatelessWidget {
  /// Configuration.
  final MyoroTooltipConfiguration configuration;

  const MyoroTooltip(this.configuration, {super.key});

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroTooltipThemeExtension>();
    return Tooltip(
      message: configuration.text,
      waitDuration: configuration.waitDuration,
      margin: configuration.margin ?? themeExtension.margin,
      child: configuration.child,
    );
  }
}
