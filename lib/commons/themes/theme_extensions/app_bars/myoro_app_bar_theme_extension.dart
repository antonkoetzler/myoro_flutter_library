import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ThemeExtension] for [MyoroAppBar].
final class MyoroAppBarThemeExtension extends ThemeExtension<MyoroAppBarThemeExtension> {
  /// Background [Color] of the app bar.
  final Color primaryColor;

  /// [EdgeInsets] of the contents of the [MyoroAppBar], not it's bottom border.
  final EdgeInsets contentPadding;

  const MyoroAppBarThemeExtension({
    required this.primaryColor,
    required this.contentPadding,
  });

  MyoroAppBarThemeExtension.fake()
      : primaryColor = kMyoroTestColors[faker.randomGenerator.integer(kMyoroTestColors.length)],
        contentPadding = EdgeInsets.all(faker.randomGenerator.integer(50).toDouble());

  @override
  MyoroAppBarThemeExtension copyWith({
    Color? primaryColor,
    EdgeInsets? contentPadding,
  }) {
    return MyoroAppBarThemeExtension(
      primaryColor: primaryColor ?? this.primaryColor,
      contentPadding: contentPadding ?? this.contentPadding,
    );
  }

  @override
  MyoroAppBarThemeExtension lerp(
    covariant ThemeExtension<MyoroAppBarThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroAppBarThemeExtension) return this;
    return copyWith(
      primaryColor: Color.lerp(primaryColor, other.primaryColor, t),
      contentPadding: EdgeInsets.lerp(contentPadding, other.contentPadding, t),
    );
  }
}
