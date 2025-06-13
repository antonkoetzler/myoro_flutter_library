import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_dialog_modal_configuration.g.dart';

/// Configuration of [MyoroDialogModal].
@myoroModel
class MyoroDialogModalConfiguration with _$MyoroDialogModalConfigurationMixin {
  static const invertButtonsDefaultValue = false;
  static const confirmButtonTextDefaultValue = '';
  static const cancelButtonTextDefaultValue = '';
  static const textDefaultValue = '';

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

  /// Text style of [text].
  final TextStyle? textStyle;

  /// Custom [Widget] option of the [MyoroDialogModal].
  final Widget? child;

  const MyoroDialogModalConfiguration({
    this.invertButtons = invertButtonsDefaultValue,
    this.confirmButtonText = confirmButtonTextDefaultValue,
    this.cancelButtonText = cancelButtonTextDefaultValue,
    this.onConfirm,
    this.onCancel,
    this.text = textDefaultValue,
    this.textStyle,
    this.child,
  }) : assert((text.length > 0) ^ (child != null), '[MyoroDialogModal]: [text] (x)or [child] must be provided.');

  factory MyoroDialogModalConfiguration.fake() {
    final bool textProvided = faker.randomGenerator.boolean();

    return MyoroDialogModalConfiguration(
      invertButtons: faker.randomGenerator.boolean(),
      confirmButtonText: faker.randomGenerator.boolean() ? faker.lorem.word() : confirmButtonTextDefaultValue,
      cancelButtonText: faker.randomGenerator.boolean() ? faker.lorem.word() : cancelButtonTextDefaultValue,
      onConfirm: faker.randomGenerator.boolean() ? (() {}) : null,
      onCancel: faker.randomGenerator.boolean() ? (() {}) : null,
      text: textProvided ? faker.lorem.word() : '',
      textStyle: faker.randomGenerator.boolean() ? MyoroTypographyDesignSystem.instance.randomTextStyle : null,
      child: textProvided ? null : const SizedBox.shrink(),
    );
  }
}
