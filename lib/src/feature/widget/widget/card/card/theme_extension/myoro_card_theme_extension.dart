import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_card_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroCard].
@immutable
@myoroThemeExtension
class MyoroCardThemeExtension extends ThemeExtension<MyoroCardThemeExtension>
    with _$MyoroCardThemeExtensionMixin
    implements MyoroCardStyle {
  /// Default constructor.
  const MyoroCardThemeExtension({
    this.backgroundColor,
    this.border,
    this.borderRadius,
    this.padding,
    this.titleCardSpacing,
    this.titleTextStyle,
    this.constraints,
  });

  /// Fake constructor.
  MyoroCardThemeExtension.fake()
    : backgroundColor = myoroNullableFake<Color>(),
      border = myoroNullableFake<Border>(),
      borderRadius = myoroNullableFake<BorderRadius>(),
      padding = myoroNullableFake<EdgeInsets>(),
      titleCardSpacing = myoroNullableFake<double>(),
      titleTextStyle = myoroNullableFake<TextStyle>(),
      constraints = myoroNullableFake<BoxConstraints>();

  /// Builder constructor.
  MyoroCardThemeExtension.builder(ColorScheme colorScheme, TextTheme textTheme)
    : backgroundColor = colorScheme.onPrimary.withValues(alpha: 0.05),
      border = Border.all(width: kMyoroBorderWidth, color: colorScheme.onPrimary),
      borderRadius = BorderRadius.circular(kMyoroBorderRadius),
      padding = const EdgeInsets.all(kMyoroMultiplier * 2.5),
      titleCardSpacing = kMyoroMultiplier * 2.5,
      titleTextStyle = textTheme.titleMedium!,
      constraints = null;

  /// Background [Color] of the [MyoroCard].
  @override
  final Color? backgroundColor;

  /// Border of the [MyoroCard].
  @override
  final Border? border;

  /// Border radius of the [MyoroCard].
  @override
  final BorderRadius? borderRadius;

  /// Padding of the [MyoroCard].
  @override
  final EdgeInsets? padding;

  /// Spacing in between the title and the card.
  @override
  final double? titleCardSpacing;

  /// Text style of the title.
  @override
  final TextStyle? titleTextStyle;

  /// [BoxConstraints] of the [MyoroCard].
  @override
  final BoxConstraints? constraints;

  /// Lerp function.
  @override
  MyoroCardThemeExtension lerp(covariant MyoroCardThemeExtension? other, double t) {
    if (other is! MyoroCardThemeExtension) return this;
    final style = MyoroCardStyle.lerp(this, other, t);
    return MyoroCardThemeExtension(
      backgroundColor: style.backgroundColor,
      border: style.border,
      borderRadius: style.borderRadius,
      padding: style.padding,
      titleCardSpacing: style.titleCardSpacing,
      titleTextStyle: style.titleTextStyle,
      constraints: style.constraints,
    );
  }
}
