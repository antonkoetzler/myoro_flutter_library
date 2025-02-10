import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ThemeExtension] for [MyoroSnackBar].
final class MyoroSnackBarThemeExtension extends ThemeExtension<MyoroSnackBarThemeExtension> {
  /// Background color of the snack bar.
  final Color primaryColor;

  /// [MyoroSnackBarEnum.standard].
  final Color standardBorderColor;

  /// [MyoroSnackBarEnum.attention].
  final Color attentionBorderColor;

  /// [MyoroSnackBarEnum.success].
  final Color successBorderColor;

  /// [MyoroSnackBarEnum.error].
  final Color errorBorderColor;

  /// Border of the snack bar.
  final double borderWidth;

  /// Border radius of the snack bar.
  final BorderRadius borderRadius;

  /// Padding of the content of the snack bar.
  final EdgeInsets padding;

  /// Spacing between [_Message]/[MyoroSnackBar.child] & [_CloseButton].
  final double contentCloseButtonSpacing;

  /// Text style of [_Message].
  final TextStyle messageTextStyle;

  /// Icon of [_CloseButton].
  final IconData closeButtonIcon;

  /// Size of the icon in [_CloseButton].
  final double closeButtonIconSize;

  const MyoroSnackBarThemeExtension({
    required this.primaryColor,
    required this.standardBorderColor,
    required this.attentionBorderColor,
    required this.successBorderColor,
    required this.errorBorderColor,
    required this.borderWidth,
    required this.borderRadius,
    required this.padding,
    required this.contentCloseButtonSpacing,
    required this.messageTextStyle,
    required this.closeButtonIcon,
    required this.closeButtonIconSize,
  });

  MyoroSnackBarThemeExtension.fake()
      : primaryColor = kMyoroTestColors[faker.randomGenerator.integer(kMyoroTestColors.length)],
        standardBorderColor = kMyoroTestColors[faker.randomGenerator.integer(kMyoroTestColors.length)],
        attentionBorderColor = kMyoroTestColors[faker.randomGenerator.integer(kMyoroTestColors.length)],
        successBorderColor = kMyoroTestColors[faker.randomGenerator.integer(kMyoroTestColors.length)],
        errorBorderColor = kMyoroTestColors[faker.randomGenerator.integer(kMyoroTestColors.length)],
        borderWidth = faker.randomGenerator.decimal(),
        borderRadius = BorderRadius.circular(faker.randomGenerator.decimal()),
        padding = EdgeInsets.all(faker.randomGenerator.decimal()),
        contentCloseButtonSpacing = faker.randomGenerator.decimal(),
        messageTextStyle = MyoroTypographyTheme.instance.randomTextStyle,
        closeButtonIcon = kMyoroTestIcons[faker.randomGenerator.integer(kMyoroTestIcons.length)],
        closeButtonIconSize = faker.randomGenerator.decimal();

  @override
  MyoroSnackBarThemeExtension copyWith({
    Color? primaryColor,
    Color? standardBorderColor,
    Color? attentionBorderColor,
    Color? successBorderColor,
    Color? errorBorderColor,
    double? borderWidth,
    BorderRadius? borderRadius,
    EdgeInsets? padding,
    double? contentCloseButtonSpacing,
    TextStyle? messageTextStyle,
    IconData? closeButtonIcon,
    double? closeButtonIconSize,
  }) {
    return MyoroSnackBarThemeExtension(
      primaryColor: primaryColor ?? this.primaryColor,
      standardBorderColor: standardBorderColor ?? this.standardBorderColor,
      attentionBorderColor: attentionBorderColor ?? this.attentionBorderColor,
      successBorderColor: successBorderColor ?? this.successBorderColor,
      errorBorderColor: errorBorderColor ?? this.errorBorderColor,
      borderWidth: borderWidth ?? this.borderWidth,
      borderRadius: borderRadius ?? this.borderRadius,
      padding: padding ?? this.padding,
      contentCloseButtonSpacing: contentCloseButtonSpacing ?? this.contentCloseButtonSpacing,
      messageTextStyle: messageTextStyle ?? this.messageTextStyle,
      closeButtonIcon: closeButtonIcon ?? this.closeButtonIcon,
      closeButtonIconSize: closeButtonIconSize ?? this.closeButtonIconSize,
    );
  }

  @override
  MyoroSnackBarThemeExtension lerp(
    covariant ThemeExtension<MyoroSnackBarThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroSnackBarThemeExtension) return this;
    return copyWith(
      primaryColor: Color.lerp(primaryColor, other.primaryColor, t),
      standardBorderColor: Color.lerp(standardBorderColor, other.standardBorderColor, t),
      attentionBorderColor: Color.lerp(attentionBorderColor, other.attentionBorderColor, t),
      successBorderColor: Color.lerp(successBorderColor, other.successBorderColor, t),
      errorBorderColor: Color.lerp(errorBorderColor, other.errorBorderColor, t),
      borderWidth: lerpDouble(borderWidth, other.borderWidth, t),
      borderRadius: BorderRadius.lerp(borderRadius, other.borderRadius, t),
      padding: EdgeInsets.lerp(padding, other.padding, t),
      contentCloseButtonSpacing: lerpDouble(contentCloseButtonSpacing, other.contentCloseButtonSpacing, t),
      messageTextStyle: TextStyle.lerp(messageTextStyle, other.messageTextStyle, t),
      closeButtonIcon: myoroLerp(closeButtonIcon, other.closeButtonIcon, t),
      closeButtonIconSize: lerpDouble(closeButtonIconSize, other.closeButtonIconSize, t),
    );
  }
}
