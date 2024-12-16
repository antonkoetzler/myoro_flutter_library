import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] of [MyoroBasicDividerWidgetShowcase].
final class MyoroBasicDividerWidgetShowcaseThemeExtension extends ThemeExtension<MyoroBasicDividerWidgetShowcaseThemeExtension> {
  /// [MyoroIconTextHoverButton.configuration.buttonBordered] of [_Button].
  final bool buttonBordered;

  const MyoroBasicDividerWidgetShowcaseThemeExtension({
    required this.buttonBordered,
  });

  @override
  MyoroBasicDividerWidgetShowcaseThemeExtension copyWith({
    bool? buttonBordered,
  }) {
    return MyoroBasicDividerWidgetShowcaseThemeExtension(
      buttonBordered: buttonBordered ?? this.buttonBordered,
    );
  }

  @override
  ThemeExtension<MyoroBasicDividerWidgetShowcaseThemeExtension> lerp(
    covariant ThemeExtension<MyoroBasicDividerWidgetShowcaseThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroBasicDividerWidgetShowcaseThemeExtension) return this;
    return copyWith(
      buttonBordered: MyoroLerpHelper.lerp(buttonBordered, other.buttonBordered, t),
    );
  }
}
