// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_snack_bar_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroSnackBarConfiguration] once the code is generated.
///
/// ```dart
/// class MyoroSnackBarConfiguration with _$MyoroSnackBarConfigurationMixin {}
/// ```
mixin _$MyoroSnackBarConfigurationMixin {
  MyoroSnackBarConfiguration get self => this as MyoroSnackBarConfiguration;

  MyoroSnackBarConfiguration copyWith({
    MyoroSnackBarTypeEnum? snackBarType,
    bool? showCloseButton,
    String? message,
    Widget? child,
    bool childProvided = true,
  }) {
    return MyoroSnackBarConfiguration(
      snackBarType: snackBarType ?? self.snackBarType,
      showCloseButton: showCloseButton ?? self.showCloseButton,
      message: message ?? self.message,
      child: childProvided ? (child ?? self.child) : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroSnackBarConfiguration &&
        other.runtimeType == runtimeType &&
        other.snackBarType == self.snackBarType &&
        other.showCloseButton == self.showCloseButton &&
        other.message == self.message &&
        other.child == self.child;
  }

  @override
  int get hashCode {
    return Object.hash(self.snackBarType, self.showCloseButton, self.message, self.child);
  }

  @override
  String toString() =>
      'MyoroSnackBarConfiguration(\n'
      '  snackBarType: ${self.snackBarType},\n'
      '  showCloseButton: ${self.showCloseButton},\n'
      '  message: ${self.message},\n'
      '  child: ${self.child},\n'
      ');';
}
