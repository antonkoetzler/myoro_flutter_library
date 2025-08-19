// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_icon_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

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
