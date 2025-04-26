import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ThemeExtension] for [MyoroSnackBar].
@immutable
class MyoroSnackBarThemeExtension extends ThemeExtension<MyoroSnackBarThemeExtension> {
  /// Background color of the snack bar.
  final Color primaryColor;

  /// [MyoroSnackBarTypeEnum.standard].
  final Color standardBorderColor;

  /// [MyoroSnackBarTypeEnum.attention].
  final Color attentionBorderColor;

  /// [MyoroSnackBarTypeEnum.success].
  final Color successBorderColor;

  /// [MyoroSnackBarTypeEnum.error].
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
      standardBorderColor =
          kMyoroTestColors[faker.randomGenerator.integer(kMyoroTestColors.length)],
      attentionBorderColor =
          kMyoroTestColors[faker.randomGenerator.integer(kMyoroTestColors.length)],
      successBorderColor = kMyoroTestColors[faker.randomGenerator.integer(kMyoroTestColors.length)],
      errorBorderColor = kMyoroTestColors[faker.randomGenerator.integer(kMyoroTestColors.length)],
      borderWidth = faker.randomGenerator.decimal(),
      borderRadius = BorderRadius.circular(faker.randomGenerator.decimal()),
      padding = EdgeInsets.all(faker.randomGenerator.decimal()),
      contentCloseButtonSpacing = faker.randomGenerator.decimal(),
      messageTextStyle = MyoroTypographyDesignSystem.instance.randomTextStyle,
      closeButtonIcon = kMyoroTestIcons[faker.randomGenerator.integer(kMyoroTestIcons.length)],
      closeButtonIconSize = faker.randomGenerator.decimal();

  MyoroSnackBarThemeExtension.builder(ColorScheme colorScheme, TextTheme textTheme)
    : primaryColor = colorScheme.primary,
      standardBorderColor = colorScheme.onPrimary,
      attentionBorderColor = MyoroColorDesignSystem.attention,
      successBorderColor = MyoroColorDesignSystem.success,
      errorBorderColor = MyoroColorDesignSystem.error,
      borderWidth = 2,
      borderRadius = BorderRadius.circular(kMyoroBorderRadiusLength),
      padding = const EdgeInsets.all(10),
      contentCloseButtonSpacing = 10,
      messageTextStyle = textTheme.bodySmall!,
      closeButtonIcon = Icons.close,
      closeButtonIconSize = 15;

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
      contentCloseButtonSpacing: lerpDouble(
        contentCloseButtonSpacing,
        other.contentCloseButtonSpacing,
        t,
      ),
      messageTextStyle: TextStyle.lerp(messageTextStyle, other.messageTextStyle, t),
      closeButtonIcon: myoroLerp(closeButtonIcon, other.closeButtonIcon, t),
      closeButtonIconSize: lerpDouble(closeButtonIconSize, other.closeButtonIconSize, t),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroSnackBarThemeExtension &&
        other.runtimeType == runtimeType &&
        other.primaryColor == primaryColor &&
        other.standardBorderColor == standardBorderColor &&
        other.attentionBorderColor == attentionBorderColor &&
        other.successBorderColor == successBorderColor &&
        other.errorBorderColor == errorBorderColor &&
        other.borderWidth == borderWidth &&
        other.borderRadius == borderRadius &&
        other.padding == padding &&
        other.contentCloseButtonSpacing == contentCloseButtonSpacing &&
        other.messageTextStyle == messageTextStyle &&
        other.closeButtonIcon == closeButtonIcon &&
        other.closeButtonIconSize == closeButtonIconSize;
  }

  @override
  int get hashCode {
    return Object.hash(
      primaryColor,
      standardBorderColor,
      attentionBorderColor,
      successBorderColor,
      errorBorderColor,
      borderWidth,
      borderRadius,
      padding,
      contentCloseButtonSpacing,
      messageTextStyle,
      closeButtonIcon,
      closeButtonIconSize,
    );
  }

  @override
  String toString() =>
      'MyoroSnackBarThemeExtension(\n'
      '  primaryColor: $primaryColor,\n'
      '  standardBorderColor: $standardBorderColor,\n'
      '  attentionBorderColor: $attentionBorderColor,\n'
      '  successBorderColor: $successBorderColor,\n'
      '  errorBorderColor: $errorBorderColor,\n'
      '  borderWidth: $borderWidth,\n'
      '  borderRadius: $borderRadius,\n'
      '  padding: $padding,\n'
      '  contentCloseButtonSpacing: $contentCloseButtonSpacing,\n'
      '  messageTextStyle: $messageTextStyle,\n'
      '  closeButtonIcon: $closeButtonIcon,\n'
      '  closeButtonIconSize: $closeButtonIconSize,\n'
      ');';
}
