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
    this.iconSize,
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
      iconSize = myoroNullableFake<double>(),
      textStyle = myoroNullableFake<MyoroTextStyle>();

  /// Builder constructor.
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
      iconSize = kMyoroMultiplier * 5,
      textStyle = MyoroTextStyle(style: textTheme.bodySmall);

  /// Background [Color] of the [MyoroIconTextButton] when it is idle.
  @override
  final Color? backgroundIdleColor;

  /// Background [Color] of the [MyoroIconTextButton] when it is hovered.
  @override
  final Color? backgroundHoverColor;

  /// Background [Color] of the [MyoroIconTextButton] when it is tapped.
  @override
  final Color? backgroundTapColor;

  /// Disabled background [Color] of the [MyoroIconTextButton].
  @override
  final Color? disabledBackgroundColor;

  /// Content [Color] of the [MyoroIconTextButton] when it is idle.
  @override
  final Color? contentIdleColor;

  /// Content [Color] of the [MyoroIconTextButton] when it is hovered.
  @override
  final Color? contentHoverColor;

  /// Content [Color] of the [MyoroIconTextButton] when it is tapped.
  @override
  final Color? contentTapColor;

  /// Border width.
  @override
  final double? borderWidth;

  /// Border radius.
  @override
  final BorderRadius? borderRadius;

  /// Border idle [Color].
  @override
  final Color? borderIdleColor;

  /// Border hover [Color].
  @override
  final Color? borderHoverColor;

  /// Border tap [Color].
  @override
  final Color? borderTapColor;

  /// Content padding.
  @override
  final EdgeInsets? contentPadding;

  /// Spacing between the icon and text.
  @override
  final double? spacing;

  /// Icon style.
  @override
  final double? iconSize;

  /// Text style.
  @override
  final MyoroTextStyle? textStyle;

  /// Lerp function.
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
      iconSize: style.iconSize,
      textStyle: style.textStyle,
    );
  }
}
