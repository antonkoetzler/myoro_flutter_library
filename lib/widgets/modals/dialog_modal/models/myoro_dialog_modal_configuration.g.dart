// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_dialog_modal_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

/// Apply this mixin to [MyoroDialogModalConfiguration] once the code is generated.
///
/// ```dart
/// class MyoroDialogModalConfiguration with _$MyoroDialogModalConfigurationMixin {}
/// ```
mixin _$MyoroDialogModalConfigurationMixin {
  MyoroDialogModalConfiguration get self =>
      this as MyoroDialogModalConfiguration;

  MyoroDialogModalConfiguration copyWith({
    bool? invertButtons,
    String? confirmButtonText,
    String? cancelButtonText,
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
      invertButtons: invertButtons ?? self.invertButtons,
      confirmButtonText: confirmButtonText ?? self.confirmButtonText,
      cancelButtonText: cancelButtonText ?? self.cancelButtonText,
      onConfirm: onConfirmProvided ? (onConfirm ?? self.onConfirm) : null,
      onCancel: onCancelProvided ? (onCancel ?? self.onCancel) : null,
      text: text ?? self.text,
      textStyle: textStyleProvided ? (textStyle ?? self.textStyle) : null,
      child: childProvided ? (child ?? self.child) : null,
    );
  }

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
