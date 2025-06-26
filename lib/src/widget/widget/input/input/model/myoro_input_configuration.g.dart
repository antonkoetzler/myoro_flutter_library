// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_input_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

/// Apply this mixin to [MyoroInputConfiguration] once the code is generated.
///
/// ```dart
/// class MyoroInputConfiguration with _$MyoroInputConfigurationMixin {}
/// ```
mixin _$MyoroInputConfigurationMixin {
  MyoroInputConfiguration get self => this as MyoroInputConfiguration;

  MyoroInputConfiguration copyWith({
    MyoroInputStyleEnum? inputStyle,
    TextAlign? textAlign,
    TextStyle? inputTextStyle,
    bool inputTextStyleProvided = true,
    String? label,
    TextStyle? labelTextStyle,
    bool labelTextStyleProvided = true,
    String? placeholder,
    EdgeInsets? contentPadding,
    bool contentPaddingProvided = true,
    InputBorder? border,
    bool borderProvided = true,
    Widget? suffix,
    bool suffixProvided = true,
    bool? enabled,
    bool? readOnly,
    bool? autofocus,
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
    FocusNode? focusNode,
    bool focusNodeProvided = true,
    TextEditingController? controller,
    bool controllerProvided = true,
  }) {
    return MyoroInputConfiguration(
      inputStyle: inputStyle ?? self.inputStyle,
      textAlign: textAlign ?? self.textAlign,
      inputTextStyle:
          inputTextStyleProvided
              ? (inputTextStyle ?? self.inputTextStyle)
              : null,
      label: label ?? self.label,
      labelTextStyle:
          labelTextStyleProvided
              ? (labelTextStyle ?? self.labelTextStyle)
              : null,
      placeholder: placeholder ?? self.placeholder,
      contentPadding:
          contentPaddingProvided
              ? (contentPadding ?? self.contentPadding)
              : null,
      border: borderProvided ? (border ?? self.border) : null,
      suffix: suffixProvided ? (suffix ?? self.suffix) : null,
      enabled: enabled ?? self.enabled,
      readOnly: readOnly ?? self.readOnly,
      autofocus: autofocus ?? self.autofocus,
      showClearTextButton: showClearTextButton ?? self.showClearTextButton,
      checkboxOnChanged:
          checkboxOnChangedProvided
              ? (checkboxOnChanged ?? self.checkboxOnChanged)
              : null,
      validation: validationProvided ? (validation ?? self.validation) : null,
      onFieldSubmitted:
          onFieldSubmittedProvided
              ? (onFieldSubmitted ?? self.onFieldSubmitted)
              : null,
      onChanged: onChangedProvided ? (onChanged ?? self.onChanged) : null,
      onCleared: onClearedProvided ? (onCleared ?? self.onCleared) : null,
      focusNode: focusNodeProvided ? (focusNode ?? self.focusNode) : null,
      controller: controllerProvided ? (controller ?? self.controller) : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroInputConfiguration &&
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
        other.focusNode == self.focusNode &&
        other.controller == self.controller;
  }

  @override
  int get hashCode {
    return Object.hash(
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
      self.focusNode,
      self.controller,
    );
  }

  @override
  String toString() =>
      'MyoroInputConfiguration(\n'
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
      '  focusNode: ${self.focusNode},\n'
      '  controller: ${self.controller},\n'
      ');';
}
