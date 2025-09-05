// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_drawer_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroDrawerConfiguration] once the code is generated.
///
/// ```dart
/// class MyoroDrawerConfiguration with _$MyoroDrawerConfigurationMixin {}
/// ```
mixin _$MyoroDrawerConfigurationMixin {
  MyoroDrawerConfiguration get self => this as MyoroDrawerConfiguration;

  @override
  bool operator ==(Object other) {
    return other is MyoroDrawerConfiguration &&
        other.runtimeType == runtimeType &&
        other.title == self.title &&
        other.showCloseButton == self.showCloseButton &&
        other.barrierDismissable == self.barrierDismissable &&
        other.closeButtonIcon == self.closeButtonIcon &&
        other.child == self.child;
  }

  @override
  int get hashCode {
    return Object.hash(self.title, self.showCloseButton, self.barrierDismissable, self.closeButtonIcon, self.child);
  }

  @override
  String toString() =>
      'MyoroDrawerConfiguration(\n'
      '  title: ${self.title},\n'
      '  showCloseButton: ${self.showCloseButton},\n'
      '  barrierDismissable: ${self.barrierDismissable},\n'
      '  closeButtonIcon: ${self.closeButtonIcon},\n'
      '  child: ${self.child},\n'
      ');';
}
