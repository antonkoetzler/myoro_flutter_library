import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ThemeExtension] for [MyoroScrollable].
final class MyoroScrollableThemeExtension extends ThemeExtension<MyoroScrollableThemeExtension> {
  /// Default direction of the scrollable. Defaults to [Axis.vertical].
  final Axis direction;

  /// Padding of the content in the [MyoroScrollable].
  final EdgeInsets padding;

  const MyoroScrollableThemeExtension({
    required this.direction,
    required this.padding,
  });

  @override
  MyoroScrollableThemeExtension copyWith({
    Axis? direction,
    EdgeInsets? padding,
  }) {
    return MyoroScrollableThemeExtension(
      direction: direction ?? this.direction,
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
      direction: MyoroLerpHelper.lerp(direction, other.direction, t),
      padding: EdgeInsets.lerp(padding, other.padding, t),
    );
  }
}
