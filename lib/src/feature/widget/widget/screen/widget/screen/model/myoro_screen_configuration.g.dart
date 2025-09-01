// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_screen_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroScreenConfiguration] once the code is generated.
///
/// ```dart
/// class MyoroScreenConfiguration with _$MyoroScreenConfigurationMixin {}
/// ```
mixin _$MyoroScreenConfigurationMixin {
  MyoroScreenConfiguration get self => this as MyoroScreenConfiguration;

  @override
  bool operator ==(Object other) {
    return other is MyoroScreenConfiguration &&
        other.runtimeType == runtimeType &&
        other.drawerController == self.drawerController &&
        other.appBar == self.appBar &&
        other.body == self.body;
  }

  @override
  int get hashCode {
    return Object.hash(self.drawerController, self.appBar, self.body);
  }

  @override
  String toString() =>
      'MyoroScreenConfiguration(\n'
      '  drawerController: ${self.drawerController},\n'
      '  appBar: ${self.appBar},\n'
      '  body: ${self.body},\n'
      ');';
}
