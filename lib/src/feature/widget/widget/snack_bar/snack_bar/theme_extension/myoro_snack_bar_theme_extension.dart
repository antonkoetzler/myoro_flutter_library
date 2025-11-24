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
    this.closeButtonIcon,
    this.closeButtonIconSize,
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
      closeButtonIcon = myoroNullableFake<IconData>(),
      closeButtonIconSize = myoroNullableFake<double>();

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
      closeButtonIcon = Icons.close,
      closeButtonIconSize = kMyoroMultiplier * 3.75;

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

  /// Border width of the snack bar.
  @override
  final double? borderWidth;

  /// Border radius of the snack bar.
  @override
  final BorderRadius? borderRadius;

  /// Padding of the content of the snack bar.
  @override
  final EdgeInsets? padding;

  /// Spacing between the message/[MyoroSnackBar.child] and the close button.
  @override
  final double? spacing;

  /// Text style of the message.
  @override
  final TextStyle? messageTextStyle;

  /// [IconData] of the close button.
  @override
  final IconData? closeButtonIcon;

  /// Icon size of the close button.
  @override
  final double? closeButtonIconSize;

  /// Lerp function.
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
      closeButtonIcon: style.closeButtonIcon,
      closeButtonIconSize: style.closeButtonIconSize,
    );
  }
}
