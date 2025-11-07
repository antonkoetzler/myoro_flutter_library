import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_button_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroButton].
@immutable
@myoroThemeExtension
class MyoroButtonThemeExtension extends ThemeExtension<MyoroButtonThemeExtension>
    with _$MyoroButtonThemeExtensionMixin
    implements MyoroButtonStyle {
  /// Default constructor.
  const MyoroButtonThemeExtension({
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
  });

  /// Fake constructor.
  MyoroButtonThemeExtension.fake()
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
      contentPadding = myoroNullableFake<EdgeInsets>();

  MyoroButtonThemeExtension.builder(MyoroDecorationThemeExtension decorationThemeExtension)
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
      contentPadding = const EdgeInsets.all(kMyoroMultiplier);

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
  MyoroButtonThemeExtension lerp(covariant MyoroButtonThemeExtension? other, double t) {
    if (other is! MyoroButtonThemeExtension) return this;
    final style = MyoroButtonStyle.lerp(this, other, t);
    return MyoroButtonThemeExtension(
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
    );
  }
}
