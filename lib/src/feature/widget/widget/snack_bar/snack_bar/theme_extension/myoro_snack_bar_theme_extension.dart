import 'package:faker/faker.dart' hide Color;
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
  /// Default constructor.
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

  /// Fake constructor.
  MyoroSnackBarThemeExtension.fake()
    : primaryColor = myoroNullableFake<Color>(),
      standardBorderColor = myoroNullableFake<Color>(),
      attentionBorderColor = myoroNullableFake<Color>(),
      successBorderColor = myoroNullableFake<Color>(),
      errorBorderColor = myoroNullableFake<Color>(),
      borderWidth = myoroNullableFake<double>(),
      borderRadius = myoroNullableFake<BorderRadius>(),
      padding = myoroNullableFake<EdgeInsets>(),
      spacing = myoroNullableFake<double>(),
      messageTextStyle = myoroNullableFake<TextStyle>(),
      closeButtonIconConfiguration = faker.randomGenerator.boolean() ? MyoroIconConfiguration.fake() : null;

  /// Builder constructor.
  MyoroSnackBarThemeExtension.builder(ColorScheme colorScheme, TextTheme textTheme)
    : primaryColor = colorScheme.primary,
      standardBorderColor = colorScheme.onPrimary,
      attentionBorderColor = MyoroColors.blue1,
      successBorderColor = MyoroColors.green1,
      errorBorderColor = MyoroColors.red1,
      borderWidth = kMyoroBorderWidth,
      borderRadius = BorderRadius.circular(kMyoroBorderRadius),
      padding = const EdgeInsets.all(kMyoroMultiplier * 2.5),
      spacing = kMyoroMultiplier * 2.5,
      messageTextStyle = textTheme.bodySmall!,
      closeButtonIconConfiguration = const MyoroIconConfiguration(icon: Icons.close, size: kMyoroMultiplier * 3.75);

  @override
  final Color? primaryColor;

  @override
  final Color? standardBorderColor;

  @override
  final Color? attentionBorderColor;

  @override
  final Color? successBorderColor;

  @override
  final Color? errorBorderColor;

  @override
  final double? borderWidth;

  @override
  final BorderRadius? borderRadius;

  @override
  final EdgeInsets? padding;

  @override
  final double? spacing;

  @override
  final TextStyle? messageTextStyle;

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
