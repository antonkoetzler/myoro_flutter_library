import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ThemeExtension] of [MyoroCarousel].
final class MyoroCarouselThemeExtension extends ThemeExtension<MyoroCarouselThemeExtension> {
  /// [MyoroIconTextHoverButton.bordered] of [_TraversalButton].
  final bool traversalButtonBordered;

  /// Icon of the previous item [_TraversalButton] in [_TraversalButtons].
  final IconData previousItemButtonIcon;

  /// Icon of the next item button in [_TraversalButtons].
  final IconData nextItemButtonIcon;

  const MyoroCarouselThemeExtension({
    required this.traversalButtonBordered,
    required this.previousItemButtonIcon,
    required this.nextItemButtonIcon,
  });

  @override
  MyoroCarouselThemeExtension copyWith({
    bool? traversalButtonBordered,
    IconData? previousItemButtonIcon,
    IconData? nextItemButtonIcon,
  }) {
    return MyoroCarouselThemeExtension(
      traversalButtonBordered: traversalButtonBordered ?? this.traversalButtonBordered,
      previousItemButtonIcon: previousItemButtonIcon ?? this.previousItemButtonIcon,
      nextItemButtonIcon: nextItemButtonIcon ?? this.nextItemButtonIcon,
    );
  }

  @override
  ThemeExtension<MyoroCarouselThemeExtension> lerp(
    covariant ThemeExtension<MyoroCarouselThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroCarouselThemeExtension) return this;
    return copyWith(
      traversalButtonBordered: myoroLerp(traversalButtonBordered, other.traversalButtonBordered, t),
      previousItemButtonIcon: myoroLerp(previousItemButtonIcon, other.previousItemButtonIcon, t),
      nextItemButtonIcon: myoroLerp(nextItemButtonIcon, other.nextItemButtonIcon, t),
    );
  }
}
