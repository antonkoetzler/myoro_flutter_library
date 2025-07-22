import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_tooltip_theme_extension.g.dart';

/// [ThemeExtension] for [MyoroTooltip].
@immutable
@myoroThemeExtension
class MyoroTooltipThemeExtension extends ThemeExtension<MyoroTooltipThemeExtension>
    with _$MyoroTooltipThemeExtensionMixin {
  const MyoroTooltipThemeExtension({required this.margin});

  MyoroTooltipThemeExtension.fake() : margin = myoroFake<EdgeInsets>();

  const MyoroTooltipThemeExtension.builder() : margin = EdgeInsets.zero;

  /// [Tooltip.margin].
  final EdgeInsets margin;

  @override
  MyoroTooltipThemeExtension lerp(covariant ThemeExtension<MyoroTooltipThemeExtension>? other, double t) {
    if (other is! MyoroTooltipThemeExtension) return this;
    return copyWith(margin: EdgeInsets.lerp(margin, other.margin, t));
  }
}
