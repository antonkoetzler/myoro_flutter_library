import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_tooltip_theme_extension.g.dart';

/// [ThemeExtension] for [MyoroTooltip].
@immutable
@myoroThemeExtension
class MyoroTooltipThemeExtension extends ThemeExtension<MyoroTooltipThemeExtension>
    with _$MyoroTooltipThemeExtensionMixin
    implements MyoroTooltipStyle {
  const MyoroTooltipThemeExtension({this.margin});

  // coverage:ignore-start
  MyoroTooltipThemeExtension.fake() : margin = faker.randomGenerator.boolean() ? myoroFake<EdgeInsets>() : null;
  // coverage:ignore-end

  const MyoroTooltipThemeExtension.builder() : margin = EdgeInsets.zero;

  /// [Tooltip.margin].
  @override
  final EdgeInsets? margin;

  @override
  MyoroTooltipThemeExtension lerp(covariant MyoroTooltipThemeExtension? other, double t) {
    if (other is! MyoroTooltipThemeExtension) return this;
    final style = MyoroTooltipStyle.lerp(this, other, t);
    return MyoroTooltipThemeExtension(margin: style.margin);
  }
}
