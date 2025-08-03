// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_carousel_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

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

/// Extension class for @myoroModel to place the copyWith function.
extension $MyoroCarouselConfigurationExtension on MyoroCarouselConfiguration {
  MyoroCarouselConfiguration copyWith({
    Axis? direction,
    bool? displayTraversalButtons,
    int? initialItem,
    bool? autoplay,
    Duration? autoplayIntervalDuration,
    List<Widget>? items,
  }) {
    return MyoroCarouselConfiguration(
      direction: direction ?? self.direction,
      displayTraversalButtons: displayTraversalButtons ?? self.displayTraversalButtons,
      initialItem: initialItem ?? self.initialItem,
      autoplay: autoplay ?? self.autoplay,
      autoplayIntervalDuration: autoplayIntervalDuration ?? self.autoplayIntervalDuration,
      items: items ?? self.items,
    );
  }
}
