// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_tooltip_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

extension $MyoroTooltipConfigurationExtension on MyoroTooltipConfiguration {
  MyoroTooltipConfiguration copyWith({
    EdgeInsets? margin,
    bool marginProvided = true,
    Duration? waitDuration,
    String? text,
  }) {
    return MyoroTooltipConfiguration(
      margin: marginProvided ? (margin ?? this.margin) : null,
      waitDuration: waitDuration ?? this.waitDuration,
      text: text ?? this.text,
    );
  }
}

/// Apply this mixin to [MyoroTooltipConfiguration] once the code is generated.
///
/// ```dart
/// class MyoroTooltipConfiguration with $MyoroTooltipConfigurationMixin {}
/// ```
mixin $MyoroTooltipConfigurationMixin {
  MyoroTooltipConfiguration get self => this as MyoroTooltipConfiguration;

  @override
  bool operator ==(Object other) {
    return other is MyoroTooltipConfiguration &&
        other.runtimeType == runtimeType &&
        other.margin == self.margin &&
        other.waitDuration == self.waitDuration &&
        other.text == self.text;
  }

  @override
  int get hashCode {
    return Object.hash(self.margin, self.waitDuration, self.text);
  }

  @override
  String toString() =>
      'MyoroTooltipConfiguration(\n'
      '  margin: ${self.margin},\n'
      '  waitDuration: ${self.waitDuration},\n'
      '  text: ${self.text},\n'
      ');';
}
