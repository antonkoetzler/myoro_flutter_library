import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_carousel_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroCarousel].
@immutable
@myoroThemeExtension
class MyoroCarouselThemeExtension extends ThemeExtension<MyoroCarouselThemeExtension>
    with _$MyoroCarouselThemeExtensionMixin {
  const MyoroCarouselThemeExtension({required this.previousItemButtonIcon, required this.nextItemButtonIcon});

  // coverage:ignore-start
  MyoroCarouselThemeExtension.fake()
    : previousItemButtonIcon = myoroFake<IconData>(),
      nextItemButtonIcon = myoroFake<IconData>();
  // coverage:ignore-end

  const MyoroCarouselThemeExtension.builder()
    : previousItemButtonIcon = Icons.keyboard_arrow_left,
      nextItemButtonIcon = Icons.keyboard_arrow_right;

  /// Icon of the previous item [_TraversalButton] in [_TraversalButtons].
  final IconData previousItemButtonIcon;

  /// Icon of the next item button in [_TraversalButtons].
  final IconData nextItemButtonIcon;

  @override
  MyoroCarouselThemeExtension lerp(covariant ThemeExtension<MyoroCarouselThemeExtension>? other, double t) {
    if (other is! MyoroCarouselThemeExtension) return this;
    return copyWith(
      previousItemButtonIcon: myoroLerp(previousItemButtonIcon, other.previousItemButtonIcon, t),
      nextItemButtonIcon: myoroLerp(nextItemButtonIcon, other.nextItemButtonIcon, t),
    );
  }
}
