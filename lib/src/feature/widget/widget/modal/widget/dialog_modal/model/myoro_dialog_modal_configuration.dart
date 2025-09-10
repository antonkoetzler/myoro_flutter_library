import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_dialog_modal_configuration.g.dart';

/// Configuration of [MyoroDialogModal].
@immutable
@myoroModel
class MyoroDialogModalConfiguration<T> extends MyoroModalConfiguration<T> with _$MyoroDialogModalConfigurationMixin<T> {
  static const invertButtonsDefaultValue = false;
  static const confirmButtonTextDefaultValue = '';
  static const cancelButtonTextDefaultValue = '';
  static const textDefaultValue = '';

  const MyoroDialogModalConfiguration({
    super.barrierDismissable,
    super.useRootNavigator,
    super.onClosed,
    super.title,
    super.showCloseButton,
    this.invertButtons = invertButtonsDefaultValue,
    this.confirmButtonText = confirmButtonTextDefaultValue,
    this.cancelButtonText = cancelButtonTextDefaultValue,
    this.onConfirm,
    this.onCancel,
    this.text = textDefaultValue,
    this.child,
  }) : assert((text.length > 0) ^ (child != null), '[MyoroDialogModal]: [text] (x)or [child] must be provided.');

  // coverage:ignore-start
  factory MyoroDialogModalConfiguration.fake() {
    final bool textProvided = faker.randomGenerator.boolean();

    return MyoroDialogModalConfiguration(
      barrierDismissable: faker.randomGenerator.boolean(),
      useRootNavigator: faker.randomGenerator.boolean(),
      onClosed: faker.randomGenerator.boolean() ? ((_) {}) : null,
      title: faker.randomGenerator.boolean() ? faker.lorem.word() : MyoroModalConfiguration.titleDefaultValue,
      showCloseButton: faker.randomGenerator.boolean(),
      invertButtons: faker.randomGenerator.boolean(),
      confirmButtonText: faker.randomGenerator.boolean() ? faker.lorem.word() : confirmButtonTextDefaultValue,
      cancelButtonText: faker.randomGenerator.boolean() ? faker.lorem.word() : cancelButtonTextDefaultValue,
      onConfirm: faker.randomGenerator.boolean() ? (() {}) : null,
      onCancel: faker.randomGenerator.boolean() ? (() {}) : null,
      text: textProvided ? faker.lorem.word() : '',
      child: textProvided ? null : const SizedBox.shrink(),
    );
  }
  // coverage:ignore-end

  /// Whether or not to invert the buttons in [_FooterButtons].
  final bool invertButtons;

  /// Text of [_ConfirmButton].
  final String confirmButtonText;

  /// Text of [_CancelButton].
  final String cancelButtonText;

  /// Function executed when [_ConfirmButton] is pressed.
  final VoidCallback? onConfirm;

  /// Function executed when [_CancelButton] is pressed.
  final VoidCallback? onCancel;

  /// Simple text option of the [MyoroDialogModal].
  final String text;

  /// Custom [Widget] option of the [MyoroDialogModal].
  final Widget? child;

  @override
  MyoroDialogModalConfiguration<T> copyWith({
    bool? barrierDismissable,
    bool? useRootNavigator,
    MyoroModalOnClosed<T>? onClosed,
    bool onClosedProvided = true,
    String? title,
    bool? showCloseButton,
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
  }) {
    return MyoroDialogModalConfiguration(
      barrierDismissable: barrierDismissable ?? this.barrierDismissable,
      useRootNavigator: useRootNavigator ?? this.useRootNavigator,
      onClosed: onClosedProvided ? (onClosed ?? this.onClosed) : null,
      title: title ?? this.title,
      showCloseButton: showCloseButton ?? this.showCloseButton,
      invertButtons: invertButtons ?? this.invertButtons,
      confirmButtonText: confirmButtonText ?? this.confirmButtonText,
      cancelButtonText: cancelButtonText ?? this.cancelButtonText,
      onConfirm: onConfirmProvided ? (onConfirm ?? this.onConfirm) : null,
      onCancel: onCancelProvided ? (onCancel ?? this.onCancel) : null,
      text: text ?? this.text,
      child: childProvided ? (child ?? this.child) : null,
    );
  }
}
