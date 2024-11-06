import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ThemeExtension] for [MyoroScrollable].
final class MyoroScrollableThemeExtension extends ThemeExtension<MyoroScrollableThemeExtension> {
  /// Default direction of the scrollable. Defaults to [Axis.vertical].
  final Axis direction;

  const MyoroScrollableThemeExtension({
    required this.direction,
  });

  @override
  MyoroScrollableThemeExtension copyWith({
    Axis? direction,
  }) {
    return MyoroScrollableThemeExtension(
      direction: direction ?? this.direction,
    );
  }

  @override
  MyoroScrollableThemeExtension lerp(MyoroScrollableThemeExtension? other, double t) {
    if (other is! MyoroScrollableThemeExtension) return this;
    return copyWith(
      direction: LerpHelper.lerp(direction, other.direction, t),
    );
  }
}
