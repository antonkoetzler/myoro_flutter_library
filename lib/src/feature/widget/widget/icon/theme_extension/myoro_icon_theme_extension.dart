import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_icon_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroIcon].
@immutable
@myoroThemeExtension
class MyoroIconThemeExtension extends ThemeExtension<MyoroIconThemeExtension>
    with _$MyoroIconThemeExtensionMixin
    implements MyoroIconStyle {
  /// Default constructor.
  const MyoroIconThemeExtension({this.color, this.size});

  /// Fake constructor.
  MyoroIconThemeExtension.fake() : color = myoroNullableFake<Color>(), size = myoroNullableFake<double>();

  /// Builder constructor.
  MyoroIconThemeExtension.builder(ColorScheme colorScheme) : color = colorScheme.onPrimary, size = kMyoroMultiplier * 8;

  /// [MyoroIconStyle.color].
  @override
  final Color? color;

  /// [MyoroIconStyle.size].
  @override
  final double? size;

  /// Lerp function.
  @override
  MyoroIconThemeExtension lerp(covariant MyoroIconThemeExtension? other, double t) {
    if (other is! MyoroIconThemeExtension) return this;
    final style = MyoroIconStyle.lerp(this, other, t);
    return copyWith(color: style?.color, size: style?.size);
  }
}
