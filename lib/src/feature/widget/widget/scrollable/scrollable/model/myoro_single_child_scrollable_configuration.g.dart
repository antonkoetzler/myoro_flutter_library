// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_single_child_scrollable_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroSingleChildScrollableConfiguration] once the code is generated.
///
/// ```dart
/// class MyoroSingleChildScrollableConfiguration with _$MyoroSingleChildScrollableConfigurationMixin {}
/// ```
mixin _$MyoroSingleChildScrollableConfigurationMixin {
  MyoroSingleChildScrollableConfiguration get self => this as MyoroSingleChildScrollableConfiguration;

  MyoroSingleChildScrollableConfiguration copyWith({
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
    return MyoroSingleChildScrollableConfiguration(
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
    return other is MyoroSingleChildScrollableConfiguration &&
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
      'MyoroSingleChildScrollableConfiguration(\n'
      '  scrollDirection: ${self.scrollDirection},\n'
      '  reverse: ${self.reverse},\n'
      '  physics: ${self.physics},\n'
      '  controller: ${self.controller},\n'
      '  primary: ${self.primary},\n'
      '  shrinkWrap: ${self.shrinkWrap},\n'
      '  gradientConfiguration: ${self.gradientConfiguration},\n'
      ');';
}
