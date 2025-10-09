// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_scrollable_gradient_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroScrollableGradientConfiguration] once the code is generated.
///
/// ```dart
/// class MyoroScrollableGradientConfiguration with _$MyoroScrollableGradientConfigurationMixin {}
/// ```
mixin _$MyoroScrollableGradientConfigurationMixin {
  MyoroScrollableGradientConfiguration get self => this as MyoroScrollableGradientConfiguration;

  MyoroScrollableGradientConfiguration copyWith({
    bool? enabled,
    Alignment? begin,
    bool beginProvided = true,
    Alignment? end,
    bool endProvided = true,
  }) {
    return MyoroScrollableGradientConfiguration(
      enabled: enabled ?? self.enabled,
      begin: beginProvided ? (begin ?? self.begin) : null,
      end: endProvided ? (end ?? self.end) : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroScrollableGradientConfiguration &&
        other.runtimeType == runtimeType &&
        other.enabled == self.enabled &&
        other.begin == self.begin &&
        other.end == self.end;
  }

  @override
  int get hashCode {
    return Object.hash(self.enabled, self.begin, self.end);
  }

  @override
  String toString() =>
      'MyoroScrollableGradientConfiguration(\n'
      '  enabled: ${self.enabled},\n'
      '  begin: ${self.begin},\n'
      '  end: ${self.end},\n'
      ');';
}
