import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ThemeExtension] for [MyoroIconTextHoverButton].
final class MyoroIconTextHoverButtonThemeExtension
    extends ThemeExtension<MyoroIconTextHoverButtonThemeExtension> {
  /// [MyoroColorDesignSystem.primary] by default.
  final Color primaryColor;

  /// [MyoroColorDesignSystem.secondary] by default.
  final Color onPrimaryColor;

  /// Default padding of the button.
  final EdgeInsets contentPadding;

  /// Default typography of the text.
  final TextStyle textStyle;

  /// Max lines allowed in the text.
  final int textMaxLines;

  /// Overflow behavior of the text.
  final TextOverflow textOverflow;

  /// Spacing between the icon & text.
  final double spacing;

  /// [MainAxisAlignment] of the [Row] holding the items.
  final MainAxisAlignment mainAxisAlignment;

  const MyoroIconTextHoverButtonThemeExtension({
    required this.primaryColor,
    required this.onPrimaryColor,
    required this.contentPadding,
    required this.textStyle,
    required this.textMaxLines,
    required this.textOverflow,
    required this.spacing,
    required this.mainAxisAlignment,
  });

  MyoroIconTextHoverButtonThemeExtension.builder(
    ColorScheme colorScheme,
    TextTheme textTheme,
  ) : primaryColor = colorScheme.primary,
      onPrimaryColor = colorScheme.onPrimary,
      contentPadding = const EdgeInsets.all(5),
      textStyle = textTheme.bodyMedium!,
      textMaxLines = 1,
      textOverflow = TextOverflow.ellipsis,
      spacing = 5,
      mainAxisAlignment = MainAxisAlignment.start;

  MyoroIconTextHoverButtonThemeExtension.fake()
    : primaryColor =
          kMyoroTestColors[faker.randomGenerator.integer(
            kMyoroTestColors.length,
          )],
      onPrimaryColor =
          kMyoroTestColors[faker.randomGenerator.integer(
            kMyoroTestColors.length,
          )],
      contentPadding = EdgeInsets.all(
        faker.randomGenerator.integer(50).toDouble(),
      ),
      textStyle = MyoroTypographyDesignSystem.instance.randomTextStyle,
      textMaxLines = faker.randomGenerator.integer(5),
      textOverflow =
          TextOverflow.values[faker.randomGenerator.integer(
            TextOverflow.values.length,
          )],
      spacing = faker.randomGenerator.decimal(),
      mainAxisAlignment =
          MainAxisAlignment.values[faker.randomGenerator.integer(
            MainAxisAlignment.values.length,
          )];

  @override
  MyoroIconTextHoverButtonThemeExtension copyWith({
    Color? primaryColor,
    Color? onPrimaryColor,
    EdgeInsets? contentPadding,
    TextStyle? textStyle,
    int? textMaxLines,
    TextOverflow? textOverflow,
    double? spacing,
    MainAxisAlignment? mainAxisAlignment,
  }) {
    return MyoroIconTextHoverButtonThemeExtension(
      primaryColor: primaryColor ?? this.primaryColor,
      onPrimaryColor: onPrimaryColor ?? this.onPrimaryColor,
      contentPadding: contentPadding ?? this.contentPadding,
      textStyle: textStyle ?? this.textStyle,
      textMaxLines: textMaxLines ?? this.textMaxLines,
      textOverflow: textOverflow ?? this.textOverflow,
      spacing: spacing ?? this.spacing,
      mainAxisAlignment: mainAxisAlignment ?? this.mainAxisAlignment,
    );
  }

  @override
  MyoroIconTextHoverButtonThemeExtension lerp(
    covariant ThemeExtension<MyoroIconTextHoverButtonThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroIconTextHoverButtonThemeExtension) return this;
    return copyWith(
      primaryColor: Color.lerp(primaryColor, other.primaryColor, t),
      onPrimaryColor: Color.lerp(onPrimaryColor, other.onPrimaryColor, t),
      contentPadding: EdgeInsets.lerp(contentPadding, other.contentPadding, t),
      textStyle: TextStyle.lerp(textStyle, other.textStyle, t),
      textMaxLines:
          lerpDouble(
            textMaxLines.toDouble(),
            other.textMaxLines.toDouble(),
            t,
          )?.toInt(),
      textOverflow: myoroLerp(textOverflow, other.textOverflow, t),
      spacing: lerpDouble(spacing, other.spacing, t),
      mainAxisAlignment: myoroLerp(
        mainAxisAlignment,
        other.mainAxisAlignment,
        t,
      ),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroIconTextHoverButtonThemeExtension &&
        other.runtimeType == runtimeType &&
        other.primaryColor == primaryColor &&
        other.onPrimaryColor == onPrimaryColor &&
        other.contentPadding == contentPadding &&
        other.textStyle == textStyle &&
        other.textMaxLines == textMaxLines &&
        other.textOverflow == textOverflow &&
        other.spacing == spacing &&
        other.mainAxisAlignment == mainAxisAlignment;
  }

  @override
  int get hashCode {
    return Object.hash(
      primaryColor,
      onPrimaryColor,
      contentPadding,
      textStyle,
      textMaxLines,
      textOverflow,
      spacing,
      mainAxisAlignment,
    );
  }
}
