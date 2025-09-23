// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_carousel_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroCarouselConfiguration] once the code is generated.
///
/// ```dart
/// class MyoroCarouselConfiguration with _$MyoroCarouselConfigurationMixin {}
/// ```
mixin _$MyoroCarouselConfigurationMixin {
  MyoroCarouselConfiguration get self => this as MyoroCarouselConfiguration;

  @override
  bool operator ==(Object other) {
    return other is MyoroCarouselConfiguration &&
        other.runtimeType == runtimeType &&
        other.direction == self.direction &&
        other.displayTraversalButtons == self.displayTraversalButtons &&
        other.initialItem == self.initialItem &&
        other.autoplay == self.autoplay &&
        other.autoplayIntervalDuration == self.autoplayIntervalDuration &&
        other.items == self.items;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.direction,
      self.displayTraversalButtons,
      self.initialItem,
      self.autoplay,
      self.autoplayIntervalDuration,
      self.items,
    );
  }

  @override
  String toString() =>
      'MyoroCarouselConfiguration(\n'
      '  direction: ${self.direction},\n'
      '  displayTraversalButtons: ${self.displayTraversalButtons},\n'
      '  initialItem: ${self.initialItem},\n'
      '  autoplay: ${self.autoplay},\n'
      '  autoplayIntervalDuration: ${self.autoplayIntervalDuration},\n'
      '  items: ${self.items},\n'
      ');';
}
