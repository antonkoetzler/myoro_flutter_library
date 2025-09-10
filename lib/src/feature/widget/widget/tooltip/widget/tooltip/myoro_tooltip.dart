import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Simple tooltip.
class MyoroTooltip extends StatelessWidget {
  const MyoroTooltip({super.key, required this.configuration, required this.child, this.themeExtension});

  /// Configuration.
  final MyoroTooltipConfiguration configuration;

  /// [Widget] utilizing the [MyoroTooltip].
  final Widget child;

  /// Theme extension.
  final MyoroTooltipThemeExtension? themeExtension;

  @override
  Widget build(context) {
    final themeExtension = this.themeExtension ?? context.resolveThemeExtension<MyoroTooltipThemeExtension>();
    final margin = themeExtension.margin;

    return MyoroSingularThemeExtensionWrapper(
      themeExtension: themeExtension,
      child: Tooltip(
        message: configuration.text,
        waitDuration: configuration.waitDuration,
        margin: margin,
        child: child,
      ),
    );
  }
}
