// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_carousel_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroCarouselThemeExtension] once the code is generated.
///
/// ```dart
/// class MyoroCarouselThemeExtension with _$MyoroCarouselThemeExtensionMixin {}
/// ```
mixin _$MyoroCarouselThemeExtensionMixin on ThemeExtension<MyoroCarouselThemeExtension> {
  MyoroCarouselThemeExtension get self => this as MyoroCarouselThemeExtension;

  @override
  MyoroCarouselThemeExtension copyWith({
    IconData? previousItemButtonIcon,
    bool previousItemButtonIconProvided = true,
    IconData? nextItemButtonIcon,
    bool nextItemButtonIconProvided = true,
  }) {
    return MyoroCarouselThemeExtension(
      previousItemButtonIcon: previousItemButtonIconProvided
          ? (previousItemButtonIcon ?? self.previousItemButtonIcon)
          : null,
      nextItemButtonIcon: nextItemButtonIconProvided ? (nextItemButtonIcon ?? self.nextItemButtonIcon) : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroCarouselThemeExtension &&
        other.runtimeType == runtimeType &&
        other.previousItemButtonIcon == self.previousItemButtonIcon &&
        other.nextItemButtonIcon == self.nextItemButtonIcon;
  }

  @override
  int get hashCode {
    return Object.hash(self.previousItemButtonIcon, self.nextItemButtonIcon);
  }

  @override
  String toString() =>
      'MyoroCarouselThemeExtension(\n'
      '  previousItemButtonIcon: ${self.previousItemButtonIcon},\n'
      '  nextItemButtonIcon: ${self.nextItemButtonIcon},\n'
      ');';
}
