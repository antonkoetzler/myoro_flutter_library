import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ThemeExtension] for [MyoroAppBar].
final class MyoroAppBarThemeExtension extends ThemeExtension<MyoroAppBarThemeExtension> {
  /// [EdgeInsets] of the contents of the [MyoroAppBar], not it's bottom border.
  final EdgeInsets contentPadding;

  const MyoroAppBarThemeExtension({
    required this.contentPadding,
  });

  @override
  MyoroAppBarThemeExtension copyWith({
    EdgeInsets? contentPadding,
  }) {
    return MyoroAppBarThemeExtension(
      contentPadding: contentPadding ?? this.contentPadding,
    );
  }

  @override
  MyoroAppBarThemeExtension lerp(MyoroAppBarThemeExtension? other, double t) {
    if (other is! MyoroAppBarThemeExtension) return this;
    return copyWith(
      contentPadding: EdgeInsets.lerp(contentPadding, other.contentPadding, t),
    );
  }
}
