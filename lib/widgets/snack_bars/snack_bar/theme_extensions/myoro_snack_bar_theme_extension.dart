import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_snack_bar_theme_extension.g.dart';

/// [ThemeExtension] for [MyoroSnackBar].
@immutable
@myoroThemeExtension
class MyoroSnackBarThemeExtension extends ThemeExtension<MyoroSnackBarThemeExtension>
    with $MyoroSnackBarThemeExtensionMixin {
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
    : primaryColor = myoroFake<Color>(),
      standardBorderColor = myoroFake<Color>(),
      attentionBorderColor = myoroFake<Color>(),
      successBorderColor = myoroFake<Color>(),
      errorBorderColor = myoroFake<Color>(),
      borderWidth = faker.randomGenerator.decimal(),
      borderRadius = myoroFake<BorderRadius>(),
      padding = myoroFake<EdgeInsets>(),
      contentCloseButtonSpacing = faker.randomGenerator.decimal(),
      messageTextStyle = MyoroTypographyDesignSystem.instance.randomTextStyle,
      closeButtonIcon = myoroFake<IconData>(),
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
  MyoroSnackBarThemeExtension lerp(covariant ThemeExtension<MyoroSnackBarThemeExtension>? other, double t) {
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
