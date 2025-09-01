import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// A simple divider.
class MyoroBasicDivider extends MyoroOverridableThemeExtensionStatelessWidget<MyoroBasicDividerThemeExtension> {
  /// Configuration model with all configurable options of [MyoroBasicDivider].
  final MyoroBasicDividerConfiguration configuration;

  const MyoroBasicDivider({super.key, required this.configuration});

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroBasicDividerThemeExtension>();
    final isHorizontal = configuration.direction.isHorizontal;
    final setShortValue = configuration.shortValue ?? themeExtension.shortValue;

    return Padding(
      padding: configuration.padding ?? EdgeInsets.zero,
      child: Container(
        color: themeExtension.color,
        width: isHorizontal ? themeExtension.longValue : setShortValue,
        height: isHorizontal ? setShortValue : themeExtension.longValue,
      ),
    );
  }
}
