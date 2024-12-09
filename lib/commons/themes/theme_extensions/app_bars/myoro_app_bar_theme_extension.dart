import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ThemeExtension] for [MyoroAppBar].
final class MyoroAppBarThemeExtension extends ThemeExtension<MyoroAppBarThemeExtension> {
  /// Background [Color] of the app bar.
  final Color backgroundColor;

  /// [EdgeInsets] of the contents of the [MyoroAppBar], not it's bottom border.
  final EdgeInsets contentPadding;

  const MyoroAppBarThemeExtension({
    required this.backgroundColor,
    required this.contentPadding,
  });

  @override
  MyoroAppBarThemeExtension copyWith({
    Color? backgroundColor,
    EdgeInsets? contentPadding,
  }) {
    return MyoroAppBarThemeExtension(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      contentPadding: contentPadding ?? this.contentPadding,
    );
  }

  @override
  ThemeExtension<MyoroAppBarThemeExtension> lerp(
    covariant ThemeExtension<MyoroAppBarThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroAppBarThemeExtension) return this;
    return copyWith(
      contentPadding: EdgeInsets.lerp(contentPadding, other.contentPadding, t),
    );
  }
}
