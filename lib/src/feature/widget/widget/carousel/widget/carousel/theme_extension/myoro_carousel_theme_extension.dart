import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_carousel_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroCarousel].
@immutable
@myoroThemeExtension
class MyoroCarouselThemeExtension extends ThemeExtension<MyoroCarouselThemeExtension>
    with _$MyoroCarouselThemeExtensionMixin {
  const MyoroCarouselThemeExtension({this.previousItemButtonIcon, this.nextItemButtonIcon});

  // coverage:ignore-start
  MyoroCarouselThemeExtension.fake()
    : previousItemButtonIcon = faker.randomGenerator.boolean() ? myoroFake<IconData>() : null,
      nextItemButtonIcon = faker.randomGenerator.boolean() ? myoroFake<IconData>() : null;
  // coverage:ignore-end

  const MyoroCarouselThemeExtension.builder()
    : previousItemButtonIcon = Icons.keyboard_arrow_left,
      nextItemButtonIcon = Icons.keyboard_arrow_right;

  /// Icon of the previous item [_TraversalButton] in [_TraversalButtons].
  final IconData? previousItemButtonIcon;

  /// Icon of the next item button in [_TraversalButtons].
  final IconData? nextItemButtonIcon;

  @override
  MyoroCarouselThemeExtension lerp(covariant ThemeExtension<MyoroCarouselThemeExtension>? other, double t) {
    if (other is! MyoroCarouselThemeExtension) return this;

    final previousItemButtonIcon = myoroLerp(this.previousItemButtonIcon, other.previousItemButtonIcon, t);
    final nextItemButtonIcon = myoroLerp(this.nextItemButtonIcon, other.nextItemButtonIcon, t);

    return copyWith(
      previousItemButtonIcon: previousItemButtonIcon,
      previousItemButtonIconProvided: previousItemButtonIcon != null,
      nextItemButtonIcon: nextItemButtonIcon,
      nextItemButtonIconProvided: nextItemButtonIcon != null,
    );
  }
}
