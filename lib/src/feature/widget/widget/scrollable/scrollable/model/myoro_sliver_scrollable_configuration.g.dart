// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_sliver_scrollable_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroSliverScrollableConfiguration] once the code is generated.
///
/// ```dart
/// class MyoroSliverScrollableConfiguration with _$MyoroSliverScrollableConfigurationMixin {}
/// ```
mixin _$MyoroSliverScrollableConfigurationMixin {
  MyoroSliverScrollableConfiguration get self => this as MyoroSliverScrollableConfiguration;

  MyoroSliverScrollableConfiguration copyWith({
    Axis? scrollDirection,
    bool? reverse,
    ScrollPhysics? physics,
    bool physicsProvided = true,
    ScrollController? controller,
    bool controllerProvided = true,
    bool? primary,
    bool primaryProvided = true,
    bool? shrinkWrap,
    MyoroScrollableGradientConfiguration? gradientConfiguration,
    bool gradientConfigurationProvided = true,
  }) {
    return MyoroSliverScrollableConfiguration(
      scrollDirection: scrollDirection ?? self.scrollDirection,
      reverse: reverse ?? self.reverse,
      physics: physicsProvided ? (physics ?? self.physics) : null,
      controller: controllerProvided ? (controller ?? self.controller) : null,
      primary: primaryProvided ? (primary ?? self.primary) : null,
      shrinkWrap: shrinkWrap ?? self.shrinkWrap,
      gradientConfiguration: gradientConfigurationProvided
          ? (gradientConfiguration ?? self.gradientConfiguration)
          : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroSliverScrollableConfiguration &&
        other.runtimeType == runtimeType &&
        other.scrollDirection == self.scrollDirection &&
        other.reverse == self.reverse &&
        other.physics == self.physics &&
        other.controller == self.controller &&
        other.primary == self.primary &&
        other.shrinkWrap == self.shrinkWrap &&
        other.gradientConfiguration == self.gradientConfiguration;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.scrollDirection,
      self.reverse,
      self.physics,
      self.controller,
      self.primary,
      self.shrinkWrap,
      self.gradientConfiguration,
    );
  }

  @override
  String toString() =>
      'MyoroSliverScrollableConfiguration(\n'
      '  scrollDirection: ${self.scrollDirection},\n'
      '  reverse: ${self.reverse},\n'
      '  physics: ${self.physics},\n'
      '  controller: ${self.controller},\n'
      '  primary: ${self.primary},\n'
      '  shrinkWrap: ${self.shrinkWrap},\n'
      '  gradientConfiguration: ${self.gradientConfiguration},\n'
      ');';
}
