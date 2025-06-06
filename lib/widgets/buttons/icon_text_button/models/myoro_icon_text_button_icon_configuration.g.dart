// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_icon_text_button_icon_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

extension $MyoroIconTextButtonIconConfigurationExtension
    on MyoroIconTextButtonIconConfiguration {
  MyoroIconTextButtonIconConfiguration copyWith({
    IconData? icon,
    double? size,
    bool sizeProvided = true,
  }) {
    return MyoroIconTextButtonIconConfiguration(
      icon: icon ?? this.icon,
      size: sizeProvided ? (size ?? this.size) : null,
    );
  }
}

/// Apply this mixin to [MyoroIconTextButtonIconConfiguration] once the code is generated.
///
/// ```dart
/// class MyoroIconTextButtonIconConfiguration with $MyoroIconTextButtonIconConfigurationMixin {}
/// ```
mixin $MyoroIconTextButtonIconConfigurationMixin {
  MyoroIconTextButtonIconConfiguration get self =>
      this as MyoroIconTextButtonIconConfiguration;

  @override
  bool operator ==(Object other) {
    return other is MyoroIconTextButtonIconConfiguration &&
        other.runtimeType == runtimeType &&
        other.icon == self.icon &&
        other.size == self.size;
  }

  @override
  int get hashCode {
    return Object.hash(self.icon, self.size);
  }

  @override
  String toString() =>
      'MyoroIconTextButtonIconConfiguration(\n'
      '  icon: ${self.icon},\n'
      '  size: ${self.size},\n'
      ');';
}
