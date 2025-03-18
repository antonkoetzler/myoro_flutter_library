import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] of [MyoroLayoutBuilderWidgetShowcase].
final class MyoroLayoutBuilderWidgetShowcaseThemeExtension
    extends ThemeExtension<MyoroLayoutBuilderWidgetShowcaseThemeExtension> {
  /// [TextStyle] of everything.
  final TextStyle textStyle;

  /// Width of [_WidgetOptions].
  final double descriptionWidth;

  const MyoroLayoutBuilderWidgetShowcaseThemeExtension({
    required this.textStyle,
    required this.descriptionWidth,
  });

  MyoroLayoutBuilderWidgetShowcaseThemeExtension.fake()
      : textStyle = MyoroTypographyTheme.instance.randomTextStyle,
        descriptionWidth = faker.randomGenerator.decimal();

  @override
  MyoroLayoutBuilderWidgetShowcaseThemeExtension copyWith({
    TextStyle? textStyle,
    double? descriptionWidth,
  }) {
    return MyoroLayoutBuilderWidgetShowcaseThemeExtension(
      textStyle: textStyle ?? this.textStyle,
      descriptionWidth: descriptionWidth ?? this.descriptionWidth,
    );
  }

  @override
  MyoroLayoutBuilderWidgetShowcaseThemeExtension lerp(
    covariant ThemeExtension<MyoroLayoutBuilderWidgetShowcaseThemeExtension>?
        other,
    double t,
  ) {
    if (other is! MyoroLayoutBuilderWidgetShowcaseThemeExtension) return this;
    return copyWith(
      textStyle: TextStyle.lerp(textStyle, other.textStyle, t),
      descriptionWidth: lerpDouble(descriptionWidth, other.descriptionWidth, t),
    );
  }
}
