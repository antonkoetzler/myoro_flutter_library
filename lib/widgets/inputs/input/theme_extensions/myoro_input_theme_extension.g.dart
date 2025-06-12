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
mixin _$MyoroInputThemeExtensionMixin
    on ThemeExtension<MyoroInputThemeExtension> {
  MyoroInputThemeExtension get self => this as MyoroInputThemeExtension;

  @override
  MyoroInputThemeExtension copyWith({
    InputBorder? underlinedBorder,
    InputBorder? outlinedBorder,
    Color? primaryColor,
    Color? errorBorderColor,
    BorderRadius? borderRadius,
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
      primaryColor: primaryColor ?? self.primaryColor,
      errorBorderColor: errorBorderColor ?? self.errorBorderColor,
      borderRadius: borderRadius ?? self.borderRadius,
      cursorHeight: cursorHeight ?? self.cursorHeight,
      contentPadding: contentPadding ?? self.contentPadding,
      disabledOpacity: disabledOpacity ?? self.disabledOpacity,
      inputTextStyle: inputTextStyle ?? self.inputTextStyle,
      spacing: spacing ?? self.spacing,
      labelTextStyle: labelTextStyle ?? self.labelTextStyle,
      labelBehavior: labelBehavior ?? self.labelBehavior,
      clearTextButtonPadding:
          clearTextButtonPadding ?? self.clearTextButtonPadding,
      clearTextButtonIcon: clearTextButtonIcon ?? self.clearTextButtonIcon,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroInputThemeExtension &&
        other.runtimeType == runtimeType &&
        other.underlinedBorder == self.underlinedBorder &&
        other.outlinedBorder == self.outlinedBorder &&
        other.primaryColor == self.primaryColor &&
        other.errorBorderColor == self.errorBorderColor &&
        other.borderRadius == self.borderRadius &&
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
      self.primaryColor,
      self.errorBorderColor,
      self.borderRadius,
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
      '  primaryColor: ${self.primaryColor},\n'
      '  errorBorderColor: ${self.errorBorderColor},\n'
      '  borderRadius: ${self.borderRadius},\n'
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
