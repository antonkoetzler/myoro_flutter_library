// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_search_input_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroSearchInputConfiguration] once the code is generated.
///
/// ```dart
/// class MyoroSearchInputConfiguration<T> with _$MyoroSearchInputConfigurationMixin<T> {}
/// ```
mixin _$MyoroSearchInputConfigurationMixin<T> {
  MyoroSearchInputConfiguration<T> get self => this as MyoroSearchInputConfiguration<T>;

  MyoroSearchInputConfiguration<T> copyWith({
    bool? requestWhenChanged,
    MyoroSearchInputRequest<T>? request,
    MyoroMenuItemBuilder<T>? itemBuilder,
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
    Key? checkboxKey,
    bool checkboxKeyProvided = true,
    FocusNode? focusNode,
    bool focusNodeProvided = true,
    TextEditingController? controller,
    bool controllerProvided = true,
  }) {
    return MyoroSearchInputConfiguration(
      requestWhenChanged: requestWhenChanged ?? self.requestWhenChanged,
      request: request ?? self.request,
      itemBuilder: itemBuilder ?? self.itemBuilder,
      inputStyle: inputStyle ?? self.inputStyle,
      textAlign: textAlign ?? self.textAlign,
      label: label ?? self.label,
      text: text ?? self.text,
      placeholder: placeholder ?? self.placeholder,
      suffix: suffixProvided ? (suffix ?? self.suffix) : null,
      enabled: enabled ?? self.enabled,
      readOnly: readOnly ?? self.readOnly,
      autofocus: autofocus ?? self.autofocus,
      showClearTextButton: showClearTextButton ?? self.showClearTextButton,
      checkboxOnChanged: checkboxOnChangedProvided ? (checkboxOnChanged ?? self.checkboxOnChanged) : null,
      validation: validationProvided ? (validation ?? self.validation) : null,
      onFieldSubmitted: onFieldSubmittedProvided ? (onFieldSubmitted ?? self.onFieldSubmitted) : null,
      onChanged: onChangedProvided ? (onChanged ?? self.onChanged) : null,
      onCleared: onClearedProvided ? (onCleared ?? self.onCleared) : null,
      inputKey: inputKeyProvided ? (inputKey ?? self.inputKey) : null,
      checkboxKey: checkboxKeyProvided ? (checkboxKey ?? self.checkboxKey) : null,
      focusNode: focusNodeProvided ? (focusNode ?? self.focusNode) : null,
      controller: controllerProvided ? (controller ?? self.controller) : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroSearchInputConfiguration<T> &&
        other.runtimeType == runtimeType &&
        other.requestWhenChanged == self.requestWhenChanged &&
        other.request == self.request &&
        other.itemBuilder == self.itemBuilder &&
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
        other.checkboxKey == self.checkboxKey &&
        other.focusNode == self.focusNode &&
        other.controller == self.controller;
  }

  @override
  int get hashCode {
    return Object.hashAll([
      self.requestWhenChanged,
      self.request,
      self.itemBuilder,
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
      self.checkboxKey,
      self.focusNode,
      self.controller,
    ]);
  }

  @override
  String toString() =>
      'MyoroSearchInputConfiguration<T>(\n'
      '  requestWhenChanged: ${self.requestWhenChanged},\n'
      '  request: ${self.request},\n'
      '  itemBuilder: ${self.itemBuilder},\n'
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
      '  checkboxKey: ${self.checkboxKey},\n'
      '  focusNode: ${self.focusNode},\n'
      '  controller: ${self.controller},\n'
      ');';
}
