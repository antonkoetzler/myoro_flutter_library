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
    with _$MyoroSnackBarThemeExtensionMixin {
  const MyoroSnackBarThemeExtension({
    this.primaryColor,
    this.standardBorderColor,
    this.attentionBorderColor,
    this.successBorderColor,
    this.errorBorderColor,
    this.borderWidth,
    this.borderRadius,
    this.padding,
    this.spacing,
    this.messageTextStyle,
    this.closeButtonIconConfiguration,
  });

  // coverage:ignore-start
  MyoroSnackBarThemeExtension.fake()
    : primaryColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      standardBorderColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      attentionBorderColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      successBorderColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      errorBorderColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      borderWidth = faker.randomGenerator.boolean() ? faker.randomGenerator.decimal() : null,
      borderRadius = faker.randomGenerator.boolean() ? myoroFake<BorderRadius>() : null,
      padding = faker.randomGenerator.boolean() ? myoroFake<EdgeInsets>() : null,
      spacing = faker.randomGenerator.boolean() ? faker.randomGenerator.decimal() : null,
      messageTextStyle = faker.randomGenerator.boolean() ? myoroFake<TextStyle>() : null,
      closeButtonIconConfiguration = faker.randomGenerator.boolean() ? MyoroIconConfiguration.fake() : null;
  // coverage:ignore-end

  MyoroSnackBarThemeExtension.builder(ColorScheme colorScheme, TextTheme textTheme)
    : primaryColor = colorScheme.primary,
      standardBorderColor = colorScheme.onPrimary,
      attentionBorderColor = MyoroColors.blue1,
      successBorderColor = MyoroColors.green1,
      errorBorderColor = MyoroColors.red1,
      borderWidth = 2,
      borderRadius = BorderRadius.circular(kMyoroBorderRadius),
      padding = const EdgeInsets.all(10),
      spacing = 10,
      messageTextStyle = textTheme.bodySmall!,
      closeButtonIconConfiguration = const MyoroIconConfiguration(icon: Icons.close, size: 15);

  /// Background color of the snack bar.
  final Color? primaryColor;

  /// [MyoroSnackBarTypeEnum.standard].
  final Color? standardBorderColor;

  /// [MyoroSnackBarTypeEnum.attention].
  final Color? attentionBorderColor;

  /// [MyoroSnackBarTypeEnum.success].
  final Color? successBorderColor;

  /// [MyoroSnackBarTypeEnum.error].
  final Color? errorBorderColor;

  /// Border of the snack bar.
  final double? borderWidth;

  /// Border radius of the snack bar.
  final BorderRadius? borderRadius;

  /// Padding of the content of the snack bar.
  final EdgeInsets? padding;

  /// Spacing between [_Message]/[MyoroSnackBar.child] & [_CloseButton].
  final double? spacing;

  /// Text style of [_Message].
  final TextStyle? messageTextStyle;

  /// [MyoroIconConfiguration] of [_CloseButton].
  final MyoroIconConfiguration? closeButtonIconConfiguration;

  @override
  MyoroSnackBarThemeExtension lerp(covariant ThemeExtension<MyoroSnackBarThemeExtension>? other, double t) {
    if (other is! MyoroSnackBarThemeExtension) return this;

    final primaryColor = Color.lerp(this.primaryColor, other.primaryColor, t);
    final standardBorderColor = Color.lerp(this.standardBorderColor, other.standardBorderColor, t);
    final attentionBorderColor = Color.lerp(this.attentionBorderColor, other.attentionBorderColor, t);
    final successBorderColor = Color.lerp(this.successBorderColor, other.successBorderColor, t);
    final errorBorderColor = Color.lerp(this.errorBorderColor, other.errorBorderColor, t);
    final borderWidth = lerpDouble(this.borderWidth, other.borderWidth, t);
    final borderRadius = BorderRadius.lerp(this.borderRadius, other.borderRadius, t);
    final padding = EdgeInsets.lerp(this.padding, other.padding, t);
    final spacing = lerpDouble(this.spacing, other.spacing, t);
    final messageTextStyle = TextStyle.lerp(this.messageTextStyle, other.messageTextStyle, t);
    final closeButtonIconConfiguration = MyoroIconConfiguration.lerp(
      this.closeButtonIconConfiguration,
      other.closeButtonIconConfiguration,
      t,
    );

    return copyWith(
      primaryColor: primaryColor,
      primaryColorProvided: primaryColor != null,
      standardBorderColor: standardBorderColor,
      standardBorderColorProvided: standardBorderColor != null,
      attentionBorderColor: attentionBorderColor,
      attentionBorderColorProvided: attentionBorderColor != null,
      successBorderColor: successBorderColor,
      successBorderColorProvided: successBorderColor != null,
      errorBorderColor: errorBorderColor,
      errorBorderColorProvided: errorBorderColor != null,
      borderWidth: borderWidth,
      borderWidthProvided: borderWidth != null,
      borderRadius: borderRadius,
      borderRadiusProvided: borderRadius != null,
      padding: padding,
      paddingProvided: padding != null,
      spacing: spacing,
      spacingProvided: spacing != null,
      messageTextStyle: messageTextStyle,
      messageTextStyleProvided: messageTextStyle != null,
      closeButtonIconConfiguration: closeButtonIconConfiguration,
      closeButtonIconConfigurationProvided: closeButtonIconConfiguration != null,
    );
  }
}
