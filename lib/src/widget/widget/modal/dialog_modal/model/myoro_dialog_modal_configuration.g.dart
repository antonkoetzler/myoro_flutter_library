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
    bool? barrierDismissable,
    bool? useRootNavigator,
    BoxConstraints? constraints,
    bool constraintsProvided = true,
    void Function()? onClosed,
    bool onClosedProvided = true,
    String? title,
    bool? showCloseButton,
    EdgeInsets? padding,
    bool paddingProvided = true,
    EdgeInsets? closeButtonPadding,
    bool closeButtonPaddingProvided = true,
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
      barrierDismissable: barrierDismissable ?? self.barrierDismissable,
      useRootNavigator: useRootNavigator ?? self.useRootNavigator,
      constraints:
          constraintsProvided ? (constraints ?? self.constraints) : null,
      onClosed: onClosedProvided ? (onClosed ?? self.onClosed) : null,
      title: title ?? self.title,
      showCloseButton: showCloseButton ?? self.showCloseButton,
      padding: paddingProvided ? (padding ?? self.padding) : null,
      closeButtonPadding:
          closeButtonPaddingProvided
              ? (closeButtonPadding ?? self.closeButtonPadding)
              : null,
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
        other.child == self.child &&
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
      self.invertButtons,
      self.confirmButtonText,
      self.cancelButtonText,
      self.onConfirm,
      self.onCancel,
      self.text,
      self.textStyle,
      self.child,
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
      'MyoroDialogModalConfiguration(\n'
      '  invertButtons: ${self.invertButtons},\n'
      '  confirmButtonText: ${self.confirmButtonText},\n'
      '  cancelButtonText: ${self.cancelButtonText},\n'
      '  onConfirm: ${self.onConfirm},\n'
      '  onCancel: ${self.onCancel},\n'
      '  text: ${self.text},\n'
      '  textStyle: ${self.textStyle},\n'
      '  child: ${self.child},\n'
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
