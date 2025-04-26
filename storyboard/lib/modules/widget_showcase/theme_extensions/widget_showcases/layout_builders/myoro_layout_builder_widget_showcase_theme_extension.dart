import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] of [MyoroLayoutBuilderWidgetShowcase].
@immutable
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
    : textStyle = MyoroTypographyDesignSystem.instance.randomTextStyle,
      descriptionWidth = faker.randomGenerator.decimal();

  MyoroLayoutBuilderWidgetShowcaseThemeExtension.builder(TextTheme textTheme)
    : textStyle = textTheme.bodyMedium!,
      descriptionWidth = 200;

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
    covariant ThemeExtension<MyoroLayoutBuilderWidgetShowcaseThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroLayoutBuilderWidgetShowcaseThemeExtension) return this;
    return copyWith(
      textStyle: TextStyle.lerp(textStyle, other.textStyle, t),
      descriptionWidth: lerpDouble(descriptionWidth, other.descriptionWidth, t),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroLayoutBuilderWidgetShowcaseThemeExtension &&
        other.runtimeType == runtimeType &&
        other.textStyle == textStyle &&
        other.descriptionWidth == descriptionWidth;
  }

  @override
  int get hashCode {
    return Object.hash(textStyle, descriptionWidth);
  }

  @override
  String toString() =>
      'MyoroLayoutBuilderWidgetShowcaseThemeExtension(\n'
      '  textStyle: $textStyle,\n'
      '  descriptionWidth: $descriptionWidth,\n'
      ');';
}
