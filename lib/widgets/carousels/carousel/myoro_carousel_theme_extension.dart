part of 'myoro_carousel.dart';

/// [ThemeExtension] of [MyoroCarousel].
@immutable
class MyoroCarouselThemeExtension extends ThemeExtension<MyoroCarouselThemeExtension> {
  /// Icon of the previous item [_TraversalButton] in [_TraversalButtons].
  final IconData previousItemButtonIcon;

  /// Icon of the next item button in [_TraversalButtons].
  final IconData nextItemButtonIcon;

  const MyoroCarouselThemeExtension({required this.previousItemButtonIcon, required this.nextItemButtonIcon});

  MyoroCarouselThemeExtension.fake()
    : previousItemButtonIcon = myoroFake<IconData>(),
      nextItemButtonIcon = myoroFake<IconData>();

  const MyoroCarouselThemeExtension.builder()
    : previousItemButtonIcon = Icons.keyboard_arrow_left,
      nextItemButtonIcon = Icons.keyboard_arrow_right;

  @override
  MyoroCarouselThemeExtension copyWith({IconData? previousItemButtonIcon, IconData? nextItemButtonIcon}) {
    return MyoroCarouselThemeExtension(
      previousItemButtonIcon: previousItemButtonIcon ?? this.previousItemButtonIcon,
      nextItemButtonIcon: nextItemButtonIcon ?? this.nextItemButtonIcon,
    );
  }

  @override
  MyoroCarouselThemeExtension lerp(covariant ThemeExtension<MyoroCarouselThemeExtension>? other, double t) {
    if (other is! MyoroCarouselThemeExtension) return this;
    return copyWith(
      previousItemButtonIcon: myoroLerp(previousItemButtonIcon, other.previousItemButtonIcon, t),
      nextItemButtonIcon: myoroLerp(nextItemButtonIcon, other.nextItemButtonIcon, t),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroCarouselThemeExtension &&
        other.runtimeType == runtimeType &&
        other.previousItemButtonIcon == previousItemButtonIcon &&
        other.nextItemButtonIcon == nextItemButtonIcon;
  }

  @override
  int get hashCode {
    return Object.hash(previousItemButtonIcon, nextItemButtonIcon);
  }

  @override
  String toString() =>
      'MyoroCarouselThemeExtension(\n'
      '  previousItemButtonIcon: $previousItemButtonIcon,\n'
      '  nextItemButtonIcon: $nextItemButtonIcon,\n'
      ');';
}
