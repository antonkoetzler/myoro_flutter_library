// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_dialog_modal_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroDialogModalConfiguration] once the code is generated.
///
/// ```dart
/// class MyoroDialogModalConfiguration<T> with _$MyoroDialogModalConfigurationMixin<T> {}
/// ```
mixin _$MyoroDialogModalConfigurationMixin<T> {
  MyoroDialogModalConfiguration<T> get self => this as MyoroDialogModalConfiguration<T>;

  MyoroDialogModalConfiguration<T> copyWith({
    bool? invertButtons,
    String? confirmButtonText,
    String? cancelButtonText,
    VoidCallback? onConfirm,
    bool onConfirmProvided = true,
    VoidCallback? onCancel,
    bool onCancelProvided = true,
    String? text,
    Widget? child,
    bool childProvided = true,
    bool? barrierDismissable,
    bool? useRootNavigator,
    MyoroModalOnClosed<T>? onClosed,
    bool onClosedProvided = true,
    String? title,
    bool? showCloseButton,
  }) {
    return MyoroDialogModalConfiguration(
      invertButtons: invertButtons ?? self.invertButtons,
      confirmButtonText: confirmButtonText ?? self.confirmButtonText,
      cancelButtonText: cancelButtonText ?? self.cancelButtonText,
      onConfirm: onConfirmProvided ? (onConfirm ?? self.onConfirm) : null,
      onCancel: onCancelProvided ? (onCancel ?? self.onCancel) : null,
      text: text ?? self.text,
      child: childProvided ? (child ?? self.child) : null,
      barrierDismissable: barrierDismissable ?? self.barrierDismissable,
      useRootNavigator: useRootNavigator ?? self.useRootNavigator,
      onClosed: onClosedProvided ? (onClosed ?? self.onClosed) : null,
      title: title ?? self.title,
      showCloseButton: showCloseButton ?? self.showCloseButton,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroDialogModalConfiguration<T> &&
        other.runtimeType == runtimeType &&
        other.invertButtons == self.invertButtons &&
        other.confirmButtonText == self.confirmButtonText &&
        other.cancelButtonText == self.cancelButtonText &&
        other.onConfirm == self.onConfirm &&
        other.onCancel == self.onCancel &&
        other.text == self.text &&
        other.child == self.child &&
        other.barrierDismissable == self.barrierDismissable &&
        other.useRootNavigator == self.useRootNavigator &&
        other.onClosed == self.onClosed &&
        other.title == self.title &&
        other.showCloseButton == self.showCloseButton;
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
      self.child,
      self.barrierDismissable,
      self.useRootNavigator,
      self.onClosed,
      self.title,
      self.showCloseButton,
    );
  }

  @override
  String toString() =>
      'MyoroDialogModalConfiguration<T>(\n'
      '  invertButtons: ${self.invertButtons},\n'
      '  confirmButtonText: ${self.confirmButtonText},\n'
      '  cancelButtonText: ${self.cancelButtonText},\n'
      '  onConfirm: ${self.onConfirm},\n'
      '  onCancel: ${self.onCancel},\n'
      '  text: ${self.text},\n'
      '  child: ${self.child},\n'
      '  barrierDismissable: ${self.barrierDismissable},\n'
      '  useRootNavigator: ${self.useRootNavigator},\n'
      '  onClosed: ${self.onClosed},\n'
      '  title: ${self.title},\n'
      '  showCloseButton: ${self.showCloseButton},\n'
      ');';
}
