import 'package:faker/faker.dart' hide Color;
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_indexed_stack_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroIndexedStack].
@immutable
@myoroThemeExtension
final class MyoroIndexedStackThemeExtension extends ThemeExtension<MyoroIndexedStackThemeExtension>
    with _$MyoroIndexedStackThemeExtensionMixin
    implements MyoroIndexedStackStyle {
  /// Default constructor.
  const MyoroIndexedStackThemeExtension({
    this.indexedStackIndicatorSpacing,
    this.indicatorSpacing,
    this.indicatorItemHeight,
    this.indicatorItemBorderRadius,
    this.indicatorItemSelectedColor,
    this.indicatorItemUnselectedColor,
  });

  /// Fake constructor.
  MyoroIndexedStackThemeExtension.fake()
    : indexedStackIndicatorSpacing = faker.randomGenerator.decimal(scale: 20),
      indicatorSpacing = faker.randomGenerator.decimal(scale: 20),
      indicatorItemHeight = faker.randomGenerator.decimal(scale: 20),
      indicatorItemBorderRadius = myoroNullableFake<BorderRadius>(),
      indicatorItemSelectedColor = myoroNullableFake<Color>(),
      indicatorItemUnselectedColor = myoroNullableFake<Color>();

  /// Builder constructor.
  MyoroIndexedStackThemeExtension.builder(ColorScheme colorScheme)
    : indexedStackIndicatorSpacing = kMyoroMultiplier * 2,
      indicatorSpacing = kMyoroMultiplier * 2,
      indicatorItemHeight = kMyoroMultiplier,
      indicatorItemBorderRadius = BorderRadius.circular(kMyoroBorderRadius),
      indicatorItemSelectedColor = colorScheme.onPrimary,
      indicatorItemUnselectedColor = colorScheme.onPrimary.withValues(alpha: 0.3);

  /// Spacing between the indicator and the indexed stack.
  @override
  final double? indexedStackIndicatorSpacing;

  /// Spacing between the indicator items.
  @override
  final double? indicatorSpacing;

  /// Height of the indicator item.
  @override
  final double? indicatorItemHeight;

  /// Border radius of the indicator item.
  @override
  final BorderRadius? indicatorItemBorderRadius;

  /// Color of the indicator item when selected.
  @override
  final Color? indicatorItemSelectedColor;

  /// Color of the indicator item when unselected.
  @override
  final Color? indicatorItemUnselectedColor;

  @override
  MyoroIndexedStackThemeExtension lerp(covariant MyoroIndexedStackThemeExtension? other, double t) {
    if (other is! MyoroIndexedStackThemeExtension) return this;
    final style = MyoroIndexedStackStyle.lerp(this, other, t);
    return MyoroIndexedStackThemeExtension(
      indexedStackIndicatorSpacing: style.indexedStackIndicatorSpacing,
      indicatorSpacing: style.indicatorSpacing,
      indicatorItemHeight: style.indicatorItemHeight,
      indicatorItemBorderRadius: style.indicatorItemBorderRadius,
      indicatorItemSelectedColor: style.indicatorItemSelectedColor,
      indicatorItemUnselectedColor: style.indicatorItemUnselectedColor,
    );
  }
}
