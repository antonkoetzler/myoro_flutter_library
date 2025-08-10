// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_input_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

/// Apply this mixin to [MyoroInputThemeExtension] once the code is generated.
///
/// ```dart
/// class MyoroInputThemeExtension with _$MyoroInputThemeExtensionMixin {}
/// ```
mixin _$MyoroInputThemeExtensionMixin on ThemeExtension<MyoroInputThemeExtension> {
  MyoroInputThemeExtension get self => this as MyoroInputThemeExtension;

  @override
  MyoroInputThemeExtension copyWith({
    UnderlineInputBorder? underlinedBorder,
    OutlineInputBorder? outlinedBorder,
    InputBorder? noneBorder,
    Color? primaryColor,
    Color? errorBorderColor,
    double? cursorHeight,
    EdgeInsets? contentPadding,
    double? disabledOpacity,
    TextStyle? inputTextStyle,
    double? spacing,
    TextStyle? labelTextStyle,
    FloatingLabelBehavior? labelBehavior,
    EdgeInsets? clearTextButtonPadding,
    IconData? clearTextButtonIcon,
  }) {
    return MyoroInputThemeExtension(
      underlinedBorder: underlinedBorder ?? self.underlinedBorder,
      outlinedBorder: outlinedBorder ?? self.outlinedBorder,
      noneBorder: noneBorder ?? self.noneBorder,
      primaryColor: primaryColor ?? self.primaryColor,
      errorBorderColor: errorBorderColor ?? self.errorBorderColor,
      cursorHeight: cursorHeight ?? self.cursorHeight,
      contentPadding: contentPadding ?? self.contentPadding,
      disabledOpacity: disabledOpacity ?? self.disabledOpacity,
      inputTextStyle: inputTextStyle ?? self.inputTextStyle,
      spacing: spacing ?? self.spacing,
      labelTextStyle: labelTextStyle ?? self.labelTextStyle,
      labelBehavior: labelBehavior ?? self.labelBehavior,
      clearTextButtonPadding: clearTextButtonPadding ?? self.clearTextButtonPadding,
      clearTextButtonIcon: clearTextButtonIcon ?? self.clearTextButtonIcon,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroInputThemeExtension &&
        other.runtimeType == runtimeType &&
        other.underlinedBorder == self.underlinedBorder &&
        other.outlinedBorder == self.outlinedBorder &&
        other.noneBorder == self.noneBorder &&
        other.primaryColor == self.primaryColor &&
        other.errorBorderColor == self.errorBorderColor &&
        other.cursorHeight == self.cursorHeight &&
        other.contentPadding == self.contentPadding &&
        other.disabledOpacity == self.disabledOpacity &&
        other.inputTextStyle == self.inputTextStyle &&
        other.spacing == self.spacing &&
        other.labelTextStyle == self.labelTextStyle &&
        other.labelBehavior == self.labelBehavior &&
        other.clearTextButtonPadding == self.clearTextButtonPadding &&
        other.clearTextButtonIcon == self.clearTextButtonIcon;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.underlinedBorder,
      self.outlinedBorder,
      self.noneBorder,
      self.primaryColor,
      self.errorBorderColor,
      self.cursorHeight,
      self.contentPadding,
      self.disabledOpacity,
      self.inputTextStyle,
      self.spacing,
      self.labelTextStyle,
      self.labelBehavior,
      self.clearTextButtonPadding,
      self.clearTextButtonIcon,
    );
  }

  @override
  String toString() =>
      'MyoroInputThemeExtension(\n'
      '  underlinedBorder: ${self.underlinedBorder},\n'
      '  outlinedBorder: ${self.outlinedBorder},\n'
      '  noneBorder: ${self.noneBorder},\n'
      '  primaryColor: ${self.primaryColor},\n'
      '  errorBorderColor: ${self.errorBorderColor},\n'
      '  cursorHeight: ${self.cursorHeight},\n'
      '  contentPadding: ${self.contentPadding},\n'
      '  disabledOpacity: ${self.disabledOpacity},\n'
      '  inputTextStyle: ${self.inputTextStyle},\n'
      '  spacing: ${self.spacing},\n'
      '  labelTextStyle: ${self.labelTextStyle},\n'
      '  labelBehavior: ${self.labelBehavior},\n'
      '  clearTextButtonPadding: ${self.clearTextButtonPadding},\n'
      '  clearTextButtonIcon: ${self.clearTextButtonIcon},\n'
      ');';
}
