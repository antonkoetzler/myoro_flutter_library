import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_resize_divider_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroResizeDivider].
@immutable
@myoroThemeExtension
final class MyoroResizeDividerThemeExtension extends ThemeExtension<MyoroResizeDividerThemeExtension>
    with _$MyoroResizeDividerThemeExtensionMixin
    implements MyoroResizeDividerStyle {
  /// Default constructor.
  const MyoroResizeDividerThemeExtension({
    this.color,
    this.shortValue,
    this.longValue,
    this.resizeButtonBorderRadius,
    this.resizeButtonColor,
    this.resizeButtonShortValue,
    this.resizeButtonLongValue,
  });

  /// Fake constructor.
  factory MyoroResizeDividerThemeExtension.fake() {
    return MyoroResizeDividerThemeExtension(
      color: myoroNullableFake<Color>(),
      shortValue: myoroNullableFake<double>(),
      longValue: myoroNullableFake<double>(),
      resizeButtonBorderRadius: myoroNullableFake<BorderRadius>(),
      resizeButtonColor: myoroNullableFake<Color>(),
      resizeButtonShortValue: myoroNullableFake<double>(),
      resizeButtonLongValue: myoroNullableFake<double>(),
    );
  }

  /// Builder constructor.
  factory MyoroResizeDividerThemeExtension.builder(
    MyoroBasicDividerThemeExtension themeExtension,
    ColorScheme colorScheme,
  ) {
    return MyoroResizeDividerThemeExtension(
      color: themeExtension.color,
      shortValue: themeExtension.shortValue,
      longValue: themeExtension.longValue,
      resizeButtonBorderRadius: BorderRadius.circular(kMyoroBorderRadius),
      resizeButtonColor: colorScheme.onPrimary,
      resizeButtonShortValue: kMyoroBorderWidth,
      resizeButtonLongValue: kMyoroBorderWidth,
    );
  }

  @override
  final Color? color;

  @override
  final double? shortValue;

  @override
  final double? longValue;

  @override
  final BorderRadius? resizeButtonBorderRadius;

  @override
  final Color? resizeButtonColor;

  @override
  final double? resizeButtonShortValue;

  @override
  final double? resizeButtonLongValue;

  @override
  MyoroResizeDividerThemeExtension lerp(covariant MyoroResizeDividerThemeExtension? other, double t) {
    if (other is! MyoroResizeDividerThemeExtension) return this;
    final style = MyoroResizeDividerStyle.lerp(this, other, t);
    return MyoroResizeDividerThemeExtension(
      color: style.color,
      shortValue: style.shortValue,
      longValue: style.longValue,
      resizeButtonBorderRadius: style.resizeButtonBorderRadius,
      resizeButtonColor: style.resizeButtonColor,
      resizeButtonShortValue: style.resizeButtonShortValue,
      resizeButtonLongValue: style.resizeButtonLongValue,
    );
  }
}
