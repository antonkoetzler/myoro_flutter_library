import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Configuration of [MyoroDialogModal].
///
/// TODO: Needs to be tested.
class MyoroDialogModalConfiguration extends Equatable {
  static const invertButtonsDefaultValue = false;

  /// Whether or not to invert the buttons in [_FooterButtons].
  final bool invertButtons;

  /// Text of [_ConfirmButton].
  final String? confirmButtonText;

  /// Text of [_CancelButton].
  final String? cancelButtonText;

  /// Function executed when [_ConfirmButton] is pressed.
  final VoidCallback? onConfirm;

  /// Function executed when [_CancelButton] is pressed.
  final VoidCallback? onCancel;

  /// Simple text option of the [MyoroDialogModal].
  final String? text;

  /// Text style of [text].
  final TextStyle? textStyle;

  /// Custom [Widget] option of the [MyoroDialogModal].
  final Widget? child;

  const MyoroDialogModalConfiguration({
    this.invertButtons = invertButtonsDefaultValue,
    this.confirmButtonText,
    this.cancelButtonText,
    this.onConfirm,
    this.onCancel,
    this.text,
    this.textStyle,
    this.child,
  }) : assert((text != null) ^ (child != null), '[MyoroDialogModal]: [text] (x)or [child] must be provided.');

  MyoroDialogModalConfiguration copyWith({
    bool? invertButtons,
    String? confirmButtonText,
    bool confirmButtonTextProvided = true,
    String? cancelButtonText,
    bool cancelButtonTextProvided = true,
    VoidCallback? onConfirm,
    bool onConfirmProvided = true,
    VoidCallback? onCancel,
    bool onCancelProvided = true,
    String? text,
    bool textProvided = true,
    TextStyle? textStyle,
    bool textStyleProvided = true,
    Widget? child,
    bool childProvided = true,
  }) {
    return MyoroDialogModalConfiguration(
      invertButtons: invertButtons ?? this.invertButtons,
      confirmButtonText: confirmButtonTextProvided ? (confirmButtonText ?? this.confirmButtonText) : null,
      cancelButtonText: cancelButtonTextProvided ? (cancelButtonText ?? this.cancelButtonText) : null,
      onConfirm: onConfirmProvided ? (onConfirm ?? this.onConfirm) : null,
      onCancel: onCancelProvided ? (onCancel ?? this.onCancel) : null,
      text: textProvided ? (text ?? this.text) : null,
      textStyle: textStyleProvided ? (textStyle ?? this.textStyle) : null,
      child: childProvided ? (child ?? this.child) : null,
    );
  }

  @override
  List<Object?> get props {
    return [invertButtons, confirmButtonText, cancelButtonText, onConfirm, onCancel, text, textStyle, child];
  }

  @override
  String toString() =>
      'MyoroDialogModalConfiguration(\n'
      '  invertButtons: $invertButtons,\n'
      '  confirmButtonText: $confirmButtonText,\n'
      '  cancelButtonText: $cancelButtonText,\n'
      '  onConfirm: $onConfirm,\n'
      '  onCancel: $onCancel,\n'
      '  text: $text,\n'
      '  textStyle: $textStyle,\n'
      '  child: $child,\n'
      ');';
}
