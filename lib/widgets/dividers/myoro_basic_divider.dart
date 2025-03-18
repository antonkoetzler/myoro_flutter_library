import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// A simple divider.
final class MyoroBasicDivider extends StatelessWidget {
  /// Configuration model with all configurable options of [MyoroBasicDivider].
  final MyoroBasicDividerConfiguration configuration;

  const MyoroBasicDivider({super.key, required this.configuration});

  static Finder finder({
    MyoroBasicDividerConfiguration? configuration,
    bool configurationEnabled = false,
    Axis? direction,
    bool directionEnabled = false,
    double? shortValue,
    bool shortValueEnabled = false,
    EdgeInsets? padding,
    bool paddingEnabled = false,
  }) {
    return find.byWidgetPredicate(
      (Widget w) =>
          w is MyoroBasicDivider &&
          (configurationEnabled ? w.configuration == configuration : true) &&
          (directionEnabled ? w.configuration.direction == direction : true) &&
          (shortValueEnabled
              ? w.configuration.shortValue == shortValue
              : true) &&
          (paddingEnabled ? w.configuration.padding == padding : true),
    );
  }

  @override
  Widget build(BuildContext context) {
    final themeExtension =
        context.resolveThemeExtension<MyoroBasicDividerThemeExtension>();
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
