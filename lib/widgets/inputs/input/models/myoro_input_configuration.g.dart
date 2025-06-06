// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_input_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

extension $MyoroInputConfigurationExtension on MyoroInputConfiguration {
  MyoroInputConfiguration copyWith({
    MyoroInputStyleEnum? inputStyle,
    TextAlign? textAlign,
    TextStyle? inputTextStyle,
    bool inputTextStyleProvided = true,
    String? label,
    bool labelProvided = true,
    String? placeholder,
    bool placeholderProvided = true,
    TextStyle? labelTextStyle,
    bool labelTextStyleProvided = true,
    EdgeInsets? contentPadding,
    InputBorder? border,
    bool borderProvided = true,
    Widget? suffix,
    bool suffixProvided = true,
    bool? enabled,
    bool? readOnly,
    bool readOnlyProvided = true,
    bool? autofocus,
    bool autofocusProvided = true,
    bool? showClearTextButton,
    bool showClearTextButtonProvided = true,
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
      inputStyle: inputStyle ?? this.inputStyle,
      textAlign: textAlign ?? this.textAlign,
      inputTextStyle:
          inputTextStyleProvided
              ? (inputTextStyle ?? this.inputTextStyle)
              : null,
      label: labelProvided ? (label ?? this.label) : null,
      placeholder:
          placeholderProvided ? (placeholder ?? this.placeholder) : null,
      labelTextStyle:
          labelTextStyleProvided
              ? (labelTextStyle ?? this.labelTextStyle)
              : null,
      contentPadding: contentPadding ?? this.contentPadding,
      border: borderProvided ? (border ?? this.border) : null,
      suffix: suffixProvided ? (suffix ?? this.suffix) : null,
      enabled: enabled ?? this.enabled,
      readOnly: readOnlyProvided ? (readOnly ?? this.readOnly) : null,
      autofocus: autofocusProvided ? (autofocus ?? this.autofocus) : null,
      showClearTextButton:
          showClearTextButtonProvided
              ? (showClearTextButton ?? this.showClearTextButton)
              : null,
      checkboxOnChanged:
          checkboxOnChangedProvided
              ? (checkboxOnChanged ?? this.checkboxOnChanged)
              : null,
      validation: validationProvided ? (validation ?? this.validation) : null,
      onFieldSubmitted:
          onFieldSubmittedProvided
              ? (onFieldSubmitted ?? this.onFieldSubmitted)
              : null,
      onChanged: onChangedProvided ? (onChanged ?? this.onChanged) : null,
      onCleared: onClearedProvided ? (onCleared ?? this.onCleared) : null,
      focusNode: focusNodeProvided ? (focusNode ?? this.focusNode) : null,
      controller: controllerProvided ? (controller ?? this.controller) : null,
    );
  }
}

/// Apply this mixin to [MyoroInputConfiguration] once the code is generated.
///
/// ```dart
/// class MyoroInputConfiguration with $MyoroInputConfigurationMixin {}
/// ```
mixin $MyoroInputConfigurationMixin {
  MyoroInputConfiguration get self => this as MyoroInputConfiguration;

  @override
  bool operator ==(Object other) {
    return other is MyoroInputConfiguration &&
        other.runtimeType == runtimeType &&
        other.inputStyle == self.inputStyle &&
        other.textAlign == self.textAlign &&
        other.inputTextStyle == self.inputTextStyle &&
        other.label == self.label &&
        other.placeholder == self.placeholder &&
        other.labelTextStyle == self.labelTextStyle &&
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
    return Object.hashAll([
      self.inputStyle,
      self.textAlign,
      self.inputTextStyle,
      self.label,
      self.placeholder,
      self.labelTextStyle,
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
    ]);
  }

  @override
  String toString() =>
      'MyoroInputConfiguration(\n'
      '  inputStyle: ${self.inputStyle},\n'
      '  textAlign: ${self.textAlign},\n'
      '  inputTextStyle: ${self.inputTextStyle},\n'
      '  label: ${self.label},\n'
      '  placeholder: ${self.placeholder},\n'
      '  labelTextStyle: ${self.labelTextStyle},\n'
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
