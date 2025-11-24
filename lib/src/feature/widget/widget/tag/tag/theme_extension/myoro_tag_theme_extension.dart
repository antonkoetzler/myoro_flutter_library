import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_tag_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroTag].
@immutable
@myoroThemeExtension
class MyoroTagThemeExtension extends ThemeExtension<MyoroTagThemeExtension>
    with _$MyoroTagThemeExtensionMixin
    implements MyoroTagStyle {
  /// Default constructor.
  const MyoroTagThemeExtension({
    this.backgroundColor,
    this.contentPadding,
    this.borderRadius,
    this.border,
    this.spacing,
    this.iconSize,
    this.textStyle,
  });

  /// Fake constructor.
  MyoroTagThemeExtension.fake()
    : backgroundColor = myoroNullableFake<Color>(),
      contentPadding = myoroNullableFake<EdgeInsets>(),
      borderRadius = myoroNullableFake<BorderRadius>(),
      border = myoroNullableFake<Border>(),
      spacing = myoroNullableFake<double>(),
      iconSize = myoroNullableFake<double>(),
      textStyle = myoroNullableFake<MyoroTextStyle>();

  /// Builder constructor.
  MyoroTagThemeExtension.builder(ColorScheme colorScheme, TextTheme textTheme)
    : backgroundColor = colorScheme.onPrimary.withValues(alpha: 0.2),
      contentPadding = const EdgeInsets.all(kMyoroMultiplier * 1.3),
      borderRadius = BorderRadius.circular(kMyoroMultiplier * 3),
      border = Border.all(width: kMyoroBorderWidth, color: colorScheme.onPrimary),
      spacing = kMyoroMultiplier,
      iconSize = kMyoroMultiplier * 20,
      textStyle = MyoroTextStyle(style: textTheme.bodySmall);

  /// Background [Color] of the [MyoroTag].
  @override
  final Color? backgroundColor;

  /// [EdgeInsets] of the contents.
  @override
  final EdgeInsets? contentPadding;

  /// [BorderRadius] of the [MyoroTag].
  @override
  final BorderRadius? borderRadius;

  /// [Border] of the [MyoroTag].
  @override
  final Border? border;

  /// Spacing between the icon and text.
  @override
  final double? spacing;

  /// Size of the icon.
  @override
  final double? iconSize;

  /// [MyoroTextStyle] of the text.
  @override
  final MyoroTextStyle? textStyle;

  /// Lerp function.
  @override
  MyoroTagThemeExtension lerp(MyoroTagThemeExtension? other, double t) {
    if (other is! MyoroTagThemeExtension) return this;
    final style = MyoroTagStyle.lerp(this, other, t);
    return MyoroTagThemeExtension(
      backgroundColor: style.backgroundColor,
      contentPadding: style.contentPadding,
      borderRadius: style.borderRadius,
      border: style.border,
      spacing: style.spacing,
      iconSize: style.iconSize,
      textStyle: style.textStyle,
    );
  }
}
