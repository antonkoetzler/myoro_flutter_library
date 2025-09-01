// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_modal_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroModalConfiguration] once the code is generated.
///
/// ```dart
/// class MyoroModalConfiguration<T> with _$MyoroModalConfigurationMixin<T> {}
/// ```
mixin _$MyoroModalConfigurationMixin<T> {
  MyoroModalConfiguration<T> get self => this as MyoroModalConfiguration<T>;

  @override
  bool operator ==(Object other) {
    return other is MyoroModalConfiguration<T> &&
        other.runtimeType == runtimeType &&
        other.barrierDismissable == self.barrierDismissable &&
        other.useRootNavigator == self.useRootNavigator &&
        other.constraints == self.constraints &&
        other.onClosed == self.onClosed &&
        other.title == self.title &&
        other.showCloseButton == self.showCloseButton &&
        other.padding == self.padding &&
        other.closeButtonPadding == self.closeButtonPadding;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.barrierDismissable,
      self.useRootNavigator,
      self.constraints,
      self.onClosed,
      self.title,
      self.showCloseButton,
      self.padding,
      self.closeButtonPadding,
    );
  }

  @override
  String toString() =>
      'MyoroModalConfiguration<T>(\n'
      '  barrierDismissable: ${self.barrierDismissable},\n'
      '  useRootNavigator: ${self.useRootNavigator},\n'
      '  constraints: ${self.constraints},\n'
      '  onClosed: ${self.onClosed},\n'
      '  title: ${self.title},\n'
      '  showCloseButton: ${self.showCloseButton},\n'
      '  padding: ${self.padding},\n'
      '  closeButtonPadding: ${self.closeButtonPadding},\n'
      ');';
}
