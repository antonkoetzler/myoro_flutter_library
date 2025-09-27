
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_snack_bar_theme_extension.g.dart';

/// [ThemeExtension] for [MyoroSnackBar].
@immutable
@myoroThemeExtension
class MyoroSnackBarThemeExtension extends ThemeExtension<MyoroSnackBarThemeExtension>
    with _$MyoroSnackBarThemeExtensionMixin
    implements MyoroSnackBarStyle {
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
      borderWidth = kMyoroBorderWidth * 2,
      borderRadius = BorderRadius.circular(kMyoroBorderRadius),
      padding = const EdgeInsets.all(kMyoroMultiplier * 2.5),
      spacing = kMyoroMultiplier * 2.5,
      messageTextStyle = textTheme.bodySmall!,
      closeButtonIconConfiguration = const MyoroIconConfiguration(icon: Icons.close, size: kMyoroMultiplier * 3.75);

  /// Background color of the snack bar.
  @override
  final Color? primaryColor;

  /// [MyoroSnackBarTypeEnum.standard].
  @override
  final Color? standardBorderColor;

  /// [MyoroSnackBarTypeEnum.attention].
  @override
  final Color? attentionBorderColor;

  /// [MyoroSnackBarTypeEnum.success].
  @override
  final Color? successBorderColor;

  /// [MyoroSnackBarTypeEnum.error].
  @override
  final Color? errorBorderColor;

  /// Border of the snack bar.
  @override
  final double? borderWidth;

  /// Border radius of the snack bar.
  @override
  final BorderRadius? borderRadius;

  /// Padding of the content of the snack bar.
  @override
  final EdgeInsets? padding;

  /// Spacing between [_Message]/[MyoroSnackBar.child] & [_CloseButton].
  @override
  final double? spacing;

  /// Text style of [_Message].
  @override
  final TextStyle? messageTextStyle;

  /// [MyoroIconConfiguration] of [_CloseButton].
  @override
  final MyoroIconConfiguration? closeButtonIconConfiguration;

  @override
  MyoroSnackBarThemeExtension lerp(covariant MyoroSnackBarThemeExtension? other, double t) {
    if (other is! MyoroSnackBarThemeExtension) return this;
    final style = MyoroSnackBarStyle.lerp(this, other, t);
    return MyoroSnackBarThemeExtension(
      primaryColor: style.primaryColor,
      standardBorderColor: style.standardBorderColor,
      attentionBorderColor: style.attentionBorderColor,
      successBorderColor: style.successBorderColor,
      errorBorderColor: style.errorBorderColor,
      borderWidth: style.borderWidth,
      borderRadius: style.borderRadius,
      padding: style.padding,
      spacing: style.spacing,
      messageTextStyle: style.messageTextStyle,
      closeButtonIconConfiguration: style.closeButtonIconConfiguration,
    );
  }
}
