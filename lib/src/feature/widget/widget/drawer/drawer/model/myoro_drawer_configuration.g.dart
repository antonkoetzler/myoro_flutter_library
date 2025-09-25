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

  MyoroDrawerConfiguration copyWith({
    String? title,
    bool? showCloseButton,
    bool? barrierDismissable,
    IconData? closeButtonIcon,
    bool closeButtonIconProvided = true,
    Widget? child,
  }) {
    return MyoroDrawerConfiguration(
      title: title ?? self.title,
      showCloseButton: showCloseButton ?? self.showCloseButton,
      barrierDismissable: barrierDismissable ?? self.barrierDismissable,
      closeButtonIcon: closeButtonIconProvided ? (closeButtonIcon ?? self.closeButtonIcon) : null,
      child: child ?? self.child,
    );
  }

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
