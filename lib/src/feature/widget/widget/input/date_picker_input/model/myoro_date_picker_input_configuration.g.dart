// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_date_picker_input_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroDatePickerInputConfiguration] once the code is generated.
///
/// ```dart
/// class MyoroDatePickerInputConfiguration with _$MyoroDatePickerInputConfigurationMixin {}
/// ```
mixin _$MyoroDatePickerInputConfigurationMixin {
  MyoroDatePickerInputConfiguration get self => this as MyoroDatePickerInputConfiguration;

  MyoroDatePickerInputConfiguration copyWith({
    MyoroInputStyleEnum? inputStyle,
    TextAlign? textAlign,
    String? label,
    String? text,
    String? placeholder,
    Widget? suffix,
    bool suffixProvided = true,
    bool? enabled,
    bool? readOnly,
    bool? autofocus,
    bool? showClearTextButton,
    MyoroInputCheckboxOnChanged? checkboxOnChanged,
    bool checkboxOnChangedProvided = true,
    MyoroInputValidation? validation,
    bool validationProvided = true,
    MyoroInputOnFieldSubmitted? onFieldSubmitted,
    bool onFieldSubmittedProvided = true,
    MyoroInputOnChanged? onChanged,
    bool onChangedProvided = true,
    VoidCallback? onCleared,
    bool onClearedProvided = true,
    Key? inputKey,
    bool inputKeyProvided = true,
    VoidCallback? onTap,
    bool onTapProvided = true,
    FocusNode? focusNode,
    bool focusNodeProvided = true,
    TextEditingController? controller,
    bool controllerProvided = true,
  }) {
    return MyoroDatePickerInputConfiguration(
      inputStyle: inputStyle ?? self.inputStyle,
      textAlign: textAlign ?? self.textAlign,
      label: label ?? self.label,
      text: text ?? self.text,
      suffix: suffixProvided ? (suffix ?? self.suffix) : null,
      enabled: enabled ?? self.enabled,
      showClearTextButton: showClearTextButton ?? self.showClearTextButton,
      checkboxOnChanged: checkboxOnChangedProvided ? (checkboxOnChanged ?? self.checkboxOnChanged) : null,
      validation: validationProvided ? (validation ?? self.validation) : null,
      onFieldSubmitted: onFieldSubmittedProvided ? (onFieldSubmitted ?? self.onFieldSubmitted) : null,
      onChanged: onChangedProvided ? (onChanged ?? self.onChanged) : null,
      onCleared: onClearedProvided ? (onCleared ?? self.onCleared) : null,
      controller: controllerProvided ? (controller ?? self.controller) : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroDatePickerInputConfiguration &&
        other.runtimeType == runtimeType &&
        other.inputStyle == self.inputStyle &&
        other.textAlign == self.textAlign &&
        other.label == self.label &&
        other.text == self.text &&
        other.placeholder == self.placeholder &&
        other.suffix == self.suffix &&
        other.enabled == self.enabled &&
        other.readOnly == self.readOnly &&
        other.autofocus == self.autofocus &&
        other.showClearTextButton == self.showClearTextButton &&
        other.checkboxOnChanged == self.checkboxOnChanged &&
        other.validation == self.validation &&
        other.onFieldSubmitted == self.onFieldSubmitted &&
        other.onChanged == self.onChanged &&
        other.onCleared == self.onCleared &&
        other.inputKey == self.inputKey &&
        other.onTap == self.onTap &&
        other.focusNode == self.focusNode &&
        other.controller == self.controller;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.inputStyle,
      self.textAlign,
      self.label,
      self.text,
      self.placeholder,
      self.suffix,
      self.enabled,
      self.readOnly,
      self.autofocus,
      self.showClearTextButton,
      self.checkboxOnChanged,
      self.validation,
      self.onFieldSubmitted,
      self.onChanged,
      self.onCleared,
      self.inputKey,
      self.onTap,
      self.focusNode,
      self.controller,
    );
  }

  @override
  String toString() =>
      'MyoroDatePickerInputConfiguration(\n'
      '  inputStyle: ${self.inputStyle},\n'
      '  textAlign: ${self.textAlign},\n'
      '  label: ${self.label},\n'
      '  text: ${self.text},\n'
      '  placeholder: ${self.placeholder},\n'
      '  suffix: ${self.suffix},\n'
      '  enabled: ${self.enabled},\n'
      '  readOnly: ${self.readOnly},\n'
      '  autofocus: ${self.autofocus},\n'
      '  showClearTextButton: ${self.showClearTextButton},\n'
      '  checkboxOnChanged: ${self.checkboxOnChanged},\n'
      '  validation: ${self.validation},\n'
      '  onFieldSubmitted: ${self.onFieldSubmitted},\n'
      '  onChanged: ${self.onChanged},\n'
      '  onCleared: ${self.onCleared},\n'
      '  inputKey: ${self.inputKey},\n'
      '  onTap: ${self.onTap},\n'
      '  focusNode: ${self.focusNode},\n'
      '  controller: ${self.controller},\n'
      ');';
}
