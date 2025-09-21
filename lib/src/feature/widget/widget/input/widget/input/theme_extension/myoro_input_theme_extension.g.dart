// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_input_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroInputThemeExtension] once the code is generated.
///
/// ```dart
/// class MyoroInputThemeExtension with _$MyoroInputThemeExtensionMixin {}
/// ```
mixin _$MyoroInputThemeExtensionMixin on ThemeExtension<MyoroInputThemeExtension> {
  MyoroInputThemeExtension get self => this as MyoroInputThemeExtension;

  @override
  MyoroInputThemeExtension copyWith({
    InputBorder? border,
    bool borderProvided = true,
    UnderlineInputBorder? underlinedBorder,
    bool underlinedBorderProvided = true,
    OutlineInputBorder? outlinedBorder,
    bool outlinedBorderProvided = true,
    InputBorder? noneBorder,
    bool noneBorderProvided = true,
    Color? primaryColor,
    bool primaryColorProvided = true,
    Color? errorBorderColor,
    bool errorBorderColorProvided = true,
    double? cursorHeight,
    bool cursorHeightProvided = true,
    EdgeInsets? contentPadding,
    bool contentPaddingProvided = true,
    double? disabledOpacity,
    bool disabledOpacityProvided = true,
    TextStyle? inputTextStyle,
    bool inputTextStyleProvided = true,
    double? spacing,
    bool spacingProvided = true,
    TextStyle? labelTextStyle,
    bool labelTextStyleProvided = true,
    FloatingLabelBehavior? labelBehavior,
    bool labelBehaviorProvided = true,
    EdgeInsets? clearTextButtonPadding,
    bool clearTextButtonPaddingProvided = true,
    IconData? clearTextButtonIcon,
    bool clearTextButtonIconProvided = true,
    double? clearTextButtonIconSize,
    bool clearTextButtonIconSizeProvided = true,
  }) {
    return MyoroInputThemeExtension(
      border: borderProvided ? (border ?? self.border) : null,
      underlinedBorder: underlinedBorderProvided ? (underlinedBorder ?? self.underlinedBorder) : null,
      outlinedBorder: outlinedBorderProvided ? (outlinedBorder ?? self.outlinedBorder) : null,
      noneBorder: noneBorderProvided ? (noneBorder ?? self.noneBorder) : null,
      primaryColor: primaryColorProvided ? (primaryColor ?? self.primaryColor) : null,
      errorBorderColor: errorBorderColorProvided ? (errorBorderColor ?? self.errorBorderColor) : null,
      cursorHeight: cursorHeightProvided ? (cursorHeight ?? self.cursorHeight) : null,
      contentPadding: contentPaddingProvided ? (contentPadding ?? self.contentPadding) : null,
      disabledOpacity: disabledOpacityProvided ? (disabledOpacity ?? self.disabledOpacity) : null,
      inputTextStyle: inputTextStyleProvided ? (inputTextStyle ?? self.inputTextStyle) : null,
      spacing: spacingProvided ? (spacing ?? self.spacing) : null,
      labelTextStyle: labelTextStyleProvided ? (labelTextStyle ?? self.labelTextStyle) : null,
      labelBehavior: labelBehaviorProvided ? (labelBehavior ?? self.labelBehavior) : null,
      clearTextButtonPadding: clearTextButtonPaddingProvided
          ? (clearTextButtonPadding ?? self.clearTextButtonPadding)
          : null,
      clearTextButtonIcon: clearTextButtonIconProvided ? (clearTextButtonIcon ?? self.clearTextButtonIcon) : null,
      clearTextButtonIconSize: clearTextButtonIconSizeProvided
          ? (clearTextButtonIconSize ?? self.clearTextButtonIconSize)
          : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroInputThemeExtension &&
        other.runtimeType == runtimeType &&
        other.border == self.border &&
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
        other.clearTextButtonIcon == self.clearTextButtonIcon &&
        other.clearTextButtonIconSize == self.clearTextButtonIconSize;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.border,
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
      self.clearTextButtonIconSize,
    );
  }

  @override
  String toString() =>
      'MyoroInputThemeExtension(\n'
      '  border: ${self.border},\n'
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
      '  clearTextButtonIconSize: ${self.clearTextButtonIconSize},\n'
      ');';
}
