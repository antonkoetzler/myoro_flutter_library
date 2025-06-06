// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_dialog_modal_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

extension $MyoroDialogModalConfigurationExtension
    on MyoroDialogModalConfiguration {
  MyoroDialogModalConfiguration copyWith({
    bool? invertButtons,
    String? confirmButtonText,
    bool confirmButtonTextProvided = true,
    String? cancelButtonText,
    bool cancelButtonTextProvided = true,
    void Function()? onConfirm,
    bool onConfirmProvided = true,
    void Function()? onCancel,
    bool onCancelProvided = true,
    String? text,
    TextStyle? textStyle,
    bool textStyleProvided = true,
    Widget? child,
    bool childProvided = true,
  }) {
    return MyoroDialogModalConfiguration(
      invertButtons: invertButtons ?? this.invertButtons,
      confirmButtonText:
          confirmButtonTextProvided
              ? (confirmButtonText ?? this.confirmButtonText)
              : null,
      cancelButtonText:
          cancelButtonTextProvided
              ? (cancelButtonText ?? this.cancelButtonText)
              : null,
      onConfirm: onConfirmProvided ? (onConfirm ?? this.onConfirm) : null,
      onCancel: onCancelProvided ? (onCancel ?? this.onCancel) : null,
      text: text ?? this.text,
      textStyle: textStyleProvided ? (textStyle ?? this.textStyle) : null,
      child: childProvided ? (child ?? this.child) : null,
    );
  }
}

/// Apply this mixin to [MyoroDialogModalConfiguration] once the code is generated.
///
/// ```dart
/// class MyoroDialogModalConfiguration with $MyoroDialogModalConfigurationMixin {}
/// ```
mixin $MyoroDialogModalConfigurationMixin {
  MyoroDialogModalConfiguration get self =>
      this as MyoroDialogModalConfiguration;

  @override
  bool operator ==(Object other) {
    return other is MyoroDialogModalConfiguration &&
        other.runtimeType == runtimeType &&
        other.invertButtons == self.invertButtons &&
        other.confirmButtonText == self.confirmButtonText &&
        other.cancelButtonText == self.cancelButtonText &&
        other.onConfirm == self.onConfirm &&
        other.onCancel == self.onCancel &&
        other.text == self.text &&
        other.textStyle == self.textStyle &&
        other.child == self.child;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.invertButtons,
      self.confirmButtonText,
      self.cancelButtonText,
      self.onConfirm,
      self.onCancel,
      self.text,
      self.textStyle,
      self.child,
    );
  }

  @override
  String toString() =>
      'MyoroDialogModalConfiguration(\n'
      '  invertButtons: ${self.invertButtons},\n'
      '  confirmButtonText: ${self.confirmButtonText},\n'
      '  cancelButtonText: ${self.cancelButtonText},\n'
      '  onConfirm: ${self.onConfirm},\n'
      '  onCancel: ${self.onCancel},\n'
      '  text: ${self.text},\n'
      '  textStyle: ${self.textStyle},\n'
      '  child: ${self.child},\n'
      ');';
}
