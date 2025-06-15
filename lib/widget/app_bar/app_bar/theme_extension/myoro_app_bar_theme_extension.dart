import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_app_bar_theme_extension.g.dart';

/// [ThemeExtension] for [MyoroAppBar].
@immutable
@myoroThemeExtension
class MyoroAppBarThemeExtension extends ThemeExtension<MyoroAppBarThemeExtension>
    with _$MyoroAppBarThemeExtensionMixin {
  /// Background [Color] of the app bar.
  final Color primaryColor;

  /// [EdgeInsets] of the contents of the [MyoroAppBar], not it's bottom border.
  final EdgeInsets contentPadding;

  const MyoroAppBarThemeExtension({required this.primaryColor, required this.contentPadding});

  MyoroAppBarThemeExtension.fake() : primaryColor = myoroFake<Color>(), contentPadding = myoroFake<EdgeInsets>();

  MyoroAppBarThemeExtension.builder(ColorScheme colorScheme)
    : primaryColor = colorScheme.primary,
      contentPadding = const EdgeInsets.all(10);

  @override
  MyoroAppBarThemeExtension lerp(covariant ThemeExtension<MyoroAppBarThemeExtension>? other, double t) {
    if (other is! MyoroAppBarThemeExtension) return this;
    return copyWith(
      primaryColor: Color.lerp(primaryColor, other.primaryColor, t),
      contentPadding: EdgeInsets.lerp(contentPadding, other.contentPadding, t),
    );
  }
}
