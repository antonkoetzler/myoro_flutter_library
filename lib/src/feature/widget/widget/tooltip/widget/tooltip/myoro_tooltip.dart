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
    final resolvedThemeExtension = themeExtension ?? context.resolveThemeExtension<MyoroTooltipThemeExtension>();

    final tooltipChild = Tooltip(
      message: configuration.text,
      waitDuration: configuration.waitDuration,
      margin: configuration.margin ?? resolvedThemeExtension.margin,
      child: child,
    );

    return MyoroSingularThemeExtensionWrapper(themeExtension: resolvedThemeExtension, child: tooltipChild);
  }
}
