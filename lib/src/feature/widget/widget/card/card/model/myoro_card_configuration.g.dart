// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_card_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroCardConfiguration] once the code is generated.
///
/// ```dart
/// class MyoroCardConfiguration with _$MyoroCardConfigurationMixin {}
/// ```
mixin _$MyoroCardConfigurationMixin {
  MyoroCardConfiguration get self => this as MyoroCardConfiguration;

  @override
  bool operator ==(Object other) {
    return other is MyoroCardConfiguration &&
        other.runtimeType == runtimeType &&
        other.title == self.title &&
        other.titleTextStyle == self.titleTextStyle &&
        other.padding == self.padding &&
        other.constraints == self.constraints &&
        other.child == self.child;
  }

  @override
  int get hashCode {
    return Object.hash(self.title, self.titleTextStyle, self.padding, self.constraints, self.child);
  }

  @override
  String toString() =>
      'MyoroCardConfiguration(\n'
      '  title: ${self.title},\n'
      '  titleTextStyle: ${self.titleTextStyle},\n'
      '  padding: ${self.padding},\n'
      '  constraints: ${self.constraints},\n'
      '  child: ${self.child},\n'
      ');';
}
