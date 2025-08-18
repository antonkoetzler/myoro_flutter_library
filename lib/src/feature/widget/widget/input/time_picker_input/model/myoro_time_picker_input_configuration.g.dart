// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_time_picker_input_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

/// Apply this mixin to [MyoroTimePickerInputConfiguration] once the code is generated.
///
/// ```dart
/// class MyoroTimePickerInputConfiguration with _$MyoroTimePickerInputConfigurationMixin {}
/// ```
mixin _$MyoroTimePickerInputConfigurationMixin {
  MyoroTimePickerInputConfiguration get self => this as MyoroTimePickerInputConfiguration;

  @override
  bool operator ==(Object other) {
    return other is MyoroTimePickerInputConfiguration &&
        other.runtimeType == runtimeType &&
        other.inputStyle == self.inputStyle &&
        other.textAlign == self.textAlign &&
        other.inputTextStyle == self.inputTextStyle &&
        other.label == self.label &&
        other.labelTextStyle == self.labelTextStyle &&
        other.placeholder == self.placeholder &&
        other.contentPadding == self.contentPadding &&
        other.border == self.border &&
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
        other.checkboxKey == self.checkboxKey &&
        other.focusNode == self.focusNode &&
        other.controller == self.controller;
  }

  @override
  int get hashCode {
    return Object.hashAll([
      self.inputStyle,
      self.textAlign,
      self.inputTextStyle,
      self.label,
      self.labelTextStyle,
      self.placeholder,
      self.contentPadding,
      self.border,
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
      self.checkboxKey,
      self.focusNode,
      self.controller,
    ]);
  }

  @override
  String toString() =>
      'MyoroTimePickerInputConfiguration(\n'
      '  inputStyle: ${self.inputStyle},\n'
      '  textAlign: ${self.textAlign},\n'
      '  inputTextStyle: ${self.inputTextStyle},\n'
      '  label: ${self.label},\n'
      '  labelTextStyle: ${self.labelTextStyle},\n'
      '  placeholder: ${self.placeholder},\n'
      '  contentPadding: ${self.contentPadding},\n'
      '  border: ${self.border},\n'
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
      '  checkboxKey: ${self.checkboxKey},\n'
      '  focusNode: ${self.focusNode},\n'
      '  controller: ${self.controller},\n'
      ');';
}

/// Extension class for @myoroModel to place the copyWith function.
extension $MyoroTimePickerInputConfigurationExtension on MyoroTimePickerInputConfiguration {
  MyoroTimePickerInputConfiguration copyWith({
    MyoroInputStyleEnum? inputStyle,
    TextAlign? textAlign,
    TextStyle? inputTextStyle,
    bool inputTextStyleProvided = true,
    String? label,
    TextStyle? labelTextStyle,
    bool labelTextStyleProvided = true,
    EdgeInsets? contentPadding,
    bool contentPaddingProvided = true,
    InputBorder? border,
    bool borderProvided = true,
    Widget? suffix,
    bool suffixProvided = true,
    bool? enabled,
    bool? showClearTextButton,
    void Function(bool, String)? checkboxOnChanged,
    bool checkboxOnChangedProvided = true,
    String? Function(String)? validation,
    bool validationProvided = true,
    void Function(String)? onFieldSubmitted,
    bool onFieldSubmittedProvided = true,
    void Function(String)? onChanged,
    bool onChangedProvided = true,
    void Function()? onCleared,
    bool onClearedProvided = true,
    Key? inputKey,
    bool inputKeyProvided = true,
    Key? checkboxKey,
    bool checkboxKeyProvided = true,
    TextEditingController? controller,
    bool controllerProvided = true,
  }) {
    return MyoroTimePickerInputConfiguration(
      inputStyle: inputStyle ?? self.inputStyle,
      textAlign: textAlign ?? self.textAlign,
      inputTextStyle: inputTextStyleProvided ? (inputTextStyle ?? self.inputTextStyle) : null,
      label: label ?? self.label,
      labelTextStyle: labelTextStyleProvided ? (labelTextStyle ?? self.labelTextStyle) : null,
      contentPadding: contentPaddingProvided ? (contentPadding ?? self.contentPadding) : null,
      border: borderProvided ? (border ?? self.border) : null,
      suffix: suffixProvided ? (suffix ?? self.suffix) : null,
      enabled: enabled ?? self.enabled,
      showClearTextButton: showClearTextButton ?? self.showClearTextButton,
      checkboxOnChanged: checkboxOnChangedProvided ? (checkboxOnChanged ?? self.checkboxOnChanged) : null,
      validation: validationProvided ? (validation ?? self.validation) : null,
      onFieldSubmitted: onFieldSubmittedProvided ? (onFieldSubmitted ?? self.onFieldSubmitted) : null,
      onChanged: onChangedProvided ? (onChanged ?? self.onChanged) : null,
      onCleared: onClearedProvided ? (onCleared ?? self.onCleared) : null,
      inputKey: inputKeyProvided ? (inputKey ?? self.inputKey) : null,
      checkboxKey: checkboxKeyProvided ? (checkboxKey ?? self.checkboxKey) : null,
      controller: controllerProvided ? (controller ?? self.controller) : null,
    );
  }
}
