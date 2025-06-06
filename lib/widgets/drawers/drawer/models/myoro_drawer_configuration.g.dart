// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_drawer_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

extension $MyoroDrawerConfigurationExtension on MyoroDrawerConfiguration {
  MyoroDrawerConfiguration copyWith({
    String? title,
    bool titleProvided = true,
    TextStyle? titleTextStyle,
    bool titleTextStyleProvided = true,
    bool? showCloseButton,
    bool? barrierDismissable,
    Widget? child,
  }) {
    return MyoroDrawerConfiguration(
      title: titleProvided ? (title ?? this.title) : null,
      titleTextStyle:
          titleTextStyleProvided
              ? (titleTextStyle ?? this.titleTextStyle)
              : null,
      showCloseButton: showCloseButton ?? this.showCloseButton,
      barrierDismissable: barrierDismissable ?? this.barrierDismissable,
      child: child ?? this.child,
    );
  }
}

/// Apply this mixin to [MyoroDrawerConfiguration] once the code is generated.
///
/// ```dart
/// class MyoroDrawerConfiguration with $MyoroDrawerConfigurationMixin {}
/// ```
mixin $MyoroDrawerConfigurationMixin {
  MyoroDrawerConfiguration get self => this as MyoroDrawerConfiguration;

  @override
  bool operator ==(Object other) {
    return other is MyoroDrawerConfiguration &&
        other.runtimeType == runtimeType &&
        other.title == self.title &&
        other.titleTextStyle == self.titleTextStyle &&
        other.showCloseButton == self.showCloseButton &&
        other.barrierDismissable == self.barrierDismissable &&
        other.child == self.child;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.title,
      self.titleTextStyle,
      self.showCloseButton,
      self.barrierDismissable,
      self.child,
    );
  }

  @override
  String toString() =>
      'MyoroDrawerConfiguration(\n'
      '  title: ${self.title},\n'
      '  titleTextStyle: ${self.titleTextStyle},\n'
      '  showCloseButton: ${self.showCloseButton},\n'
      '  barrierDismissable: ${self.barrierDismissable},\n'
      '  child: ${self.child},\n'
      ');';
}
