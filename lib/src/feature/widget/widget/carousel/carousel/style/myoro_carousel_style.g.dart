// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_carousel_style.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroCarouselStyle] once the code is generated.
///
/// ```dart
/// class MyoroCarouselStyle with _$MyoroCarouselStyleMixin {}
/// ```
mixin _$MyoroCarouselStyleMixin {
  MyoroCarouselStyle get self => this as MyoroCarouselStyle;

  MyoroCarouselStyle copyWith({
    IconData? previousItemButtonIcon,
    bool previousItemButtonIconProvided = true,
    IconData? nextItemButtonIcon,
    bool nextItemButtonIconProvided = true,
  }) {
    return MyoroCarouselStyle(
      previousItemButtonIcon: previousItemButtonIconProvided
          ? (previousItemButtonIcon ?? self.previousItemButtonIcon)
          : null,
      nextItemButtonIcon: nextItemButtonIconProvided
          ? (nextItemButtonIcon ?? self.nextItemButtonIcon)
          : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroCarouselStyle &&
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
      'MyoroCarouselStyle(\n'
      '  previousItemButtonIcon: ${self.previousItemButtonIcon},\n'
      '  nextItemButtonIcon: ${self.nextItemButtonIcon},\n'
      ');';
}
