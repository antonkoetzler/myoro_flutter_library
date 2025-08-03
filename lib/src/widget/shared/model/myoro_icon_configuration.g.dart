// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_icon_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

/// Apply this mixin to [MyoroIconConfiguration] once the code is generated.
///
/// ```dart
/// class MyoroIconConfiguration with _$MyoroIconConfigurationMixin {}
/// ```
mixin _$MyoroIconConfigurationMixin {
  MyoroIconConfiguration get self => this as MyoroIconConfiguration;

  @override
  bool operator ==(Object other) {
    return other is MyoroIconConfiguration &&
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
      'MyoroIconConfiguration(\n'
      '  icon: ${self.icon},\n'
      '  size: ${self.size},\n'
      ');';
}

/// Extension class for @myoroModel to place the copyWith function.
extension $MyoroIconConfigurationExtension on MyoroIconConfiguration {
  MyoroIconConfiguration copyWith({IconData? icon, double? size, bool sizeProvided = true}) {
    return MyoroIconConfiguration(icon: icon ?? self.icon, size: sizeProvided ? (size ?? self.size) : null);
  }
}
