import 'package:faker/faker.dart' hide Color;
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_icon_text_button_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroIconTextButton].
@immutable
@myoroThemeExtension
class MyoroIconTextButtonThemeExtension extends ThemeExtension<MyoroIconTextButtonThemeExtension>
    with _$MyoroIconTextButtonThemeExtensionMixin
    implements MyoroIconTextButtonStyle {
    /// Default constructor.
  const MyoroIconTextButtonThemeExtension({
    this.backgroundIdleColor,
    this.backgroundHoverColor,
    this.backgroundTapColor,
    this.disabledBackgroundColor,
    this.contentIdleColor,
    this.contentHoverColor,
    this.contentTapColor,
    this.borderWidth,
    this.borderRadius,
    this.borderIdleColor,
    this.borderHoverColor,
    this.borderTapColor,
    this.contentPadding,
    this.spacing,
    this.textStyle,
  });

  /// Fake constructor.
  MyoroIconTextButtonThemeExtension.fake()
    : backgroundIdleColor = myoroNullableFake<Color>(),
      backgroundHoverColor = myoroNullableFake<Color>(),
      backgroundTapColor = myoroNullableFake<Color>(),
      disabledBackgroundColor = myoroNullableFake<Color>(),
      contentIdleColor = myoroNullableFake<Color>(),
      contentHoverColor = myoroNullableFake<Color>(),
      contentTapColor = myoroNullableFake<Color>(),
      borderWidth = myoroNullableFake<double>(),
      borderRadius = myoroNullableFake<BorderRadius>(),
      borderIdleColor = myoroNullableFake<Color>(),
      borderHoverColor = myoroNullableFake<Color>(),
      borderTapColor = myoroNullableFake<Color>(),
      contentPadding = myoroNullableFake<EdgeInsets>(),
      spacing = myoroNullableFake<double>(),
      textStyle = myoroNullableFake<TextStyle>();

  MyoroIconTextButtonThemeExtension.builder(TextTheme textTheme, MyoroDecorationThemeExtension decorationThemeExtension)
    : backgroundIdleColor = decorationThemeExtension.primaryBackgroundIdleColor,
      backgroundHoverColor = decorationThemeExtension.primaryBackgroundHoverColor,
      backgroundTapColor = decorationThemeExtension.primaryBackgroundTapColor,
      disabledBackgroundColor = decorationThemeExtension.disabledBackgroundColor,
      contentIdleColor = decorationThemeExtension.primaryContentColor,
      contentHoverColor = decorationThemeExtension.primaryContentColor,
      contentTapColor = decorationThemeExtension.primaryContentColor,
      borderWidth = null,
      borderRadius = decorationThemeExtension.borderRadius,
      borderIdleColor = null,
      borderHoverColor = null,
      borderTapColor = null,
      contentPadding = const EdgeInsets.all(kMyoroMultiplier * 2),
      spacing = kMyoroMultiplier,
      textStyle = textTheme.bodySmall;

  @override
  final Color? backgroundIdleColor;

  @override
  final Color? backgroundHoverColor;

  @override
  final Color? backgroundTapColor;

  @override
  final Color? disabledBackgroundColor;

  @override
  final Color? contentIdleColor;

  @override
  final Color? contentHoverColor;

  @override
  final Color? contentTapColor;

  @override
  final double? borderWidth;

  @override
  final BorderRadius? borderRadius;

  @override
  final Color? borderIdleColor;

  @override
  final Color? borderHoverColor;

  @override
  final Color? borderTapColor;

  @override
  final EdgeInsets? contentPadding;

  @override
  final double? spacing;

  @override
  final TextStyle? textStyle;

  @override
  MyoroIconTextButtonThemeExtension lerp(covariant MyoroIconTextButtonThemeExtension? other, double t) {
    if (other is! MyoroIconTextButtonThemeExtension) return this;
    final style = MyoroIconTextButtonStyle.lerp(this, other, t);
    return MyoroIconTextButtonThemeExtension(
      backgroundIdleColor: style.backgroundIdleColor,
      backgroundHoverColor: style.backgroundHoverColor,
      backgroundTapColor: style.backgroundTapColor,
      disabledBackgroundColor: style.disabledBackgroundColor,
      contentIdleColor: style.contentIdleColor,
      contentHoverColor: style.contentHoverColor,
      contentTapColor: style.contentTapColor,
      borderWidth: style.borderWidth,
      borderRadius: style.borderRadius,
      borderIdleColor: style.borderIdleColor,
      borderHoverColor: style.borderHoverColor,
      borderTapColor: style.borderTapColor,
      contentPadding: style.contentPadding,
      spacing: style.spacing,
      textStyle: style.textStyle,
    );
  }
}
