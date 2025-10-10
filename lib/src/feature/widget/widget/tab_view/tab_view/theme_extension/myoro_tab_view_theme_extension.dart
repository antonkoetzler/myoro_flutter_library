import 'package:faker/faker.dart' hide Color;
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_tab_view_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroTabView].
@immutable
@myoroThemeExtension
class MyoroTabViewThemeExtension extends ThemeExtension<MyoroTabViewThemeExtension>
    with _$MyoroTabViewThemeExtensionMixin
    implements MyoroTabViewStyle {
  const MyoroTabViewThemeExtension({this.tabButtonBorderRadius, this.tabButtonIconSize, this.tabButtonTextStyle});

  MyoroTabViewThemeExtension.fake()
    : tabButtonBorderRadius = faker.randomGenerator.boolean() ? myoroFake<BorderRadius>() : null,
      tabButtonIconSize = faker.randomGenerator.boolean() ? faker.randomGenerator.decimal(scale: 20) : null,
      tabButtonTextStyle = faker.randomGenerator.boolean() ? myoroFake<TextStyle>() : null;

  MyoroTabViewThemeExtension.builder(ColorScheme colorScheme, TextTheme textTheme)
    : tabButtonBorderRadius = BorderRadius.zero,
      tabButtonIconSize = kMyoroMultiplier * 5,
      tabButtonTextStyle = textTheme.bodySmall!;

  /// [BorderRadius] of a tab traversal button.
  @override
  final BorderRadius? tabButtonBorderRadius;

  /// Icon size of a tab traversal button.
  @override
  final double? tabButtonIconSize;

  /// [TextStyle] of a tab traversal button.
  @override
  final TextStyle? tabButtonTextStyle;

  @override
  MyoroTabViewThemeExtension lerp(covariant MyoroTabViewThemeExtension? other, double t) {
    if (other is! MyoroTabViewThemeExtension) return this;
    final style = MyoroTabViewStyle.lerp(this, other, t);
    return MyoroTabViewThemeExtension(
      tabButtonBorderRadius: style.tabButtonBorderRadius,
      tabButtonIconSize: style.tabButtonIconSize,
      tabButtonTextStyle: style.tabButtonTextStyle,
    );
  }
}
