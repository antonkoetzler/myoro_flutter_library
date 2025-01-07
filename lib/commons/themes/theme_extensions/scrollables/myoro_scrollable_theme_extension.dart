import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ThemeExtension] for [MyoroScrollable].
final class MyoroScrollableThemeExtension extends ThemeExtension<MyoroScrollableThemeExtension> {
  /// Padding of the content in the [MyoroScrollable].
  final EdgeInsets padding;

  const MyoroScrollableThemeExtension({
    required this.padding,
  });

  @override
  MyoroScrollableThemeExtension copyWith({
    EdgeInsets? padding,
  }) {
    return MyoroScrollableThemeExtension(
      padding: padding ?? this.padding,
    );
  }

  @override
  ThemeExtension<MyoroScrollableThemeExtension> lerp(
    covariant ThemeExtension<MyoroScrollableThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroScrollableThemeExtension) return this;
    return copyWith(
      padding: EdgeInsets.lerp(padding, other.padding, t),
    );
  }
}
