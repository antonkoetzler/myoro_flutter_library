// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_checkbox_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroCheckboxThemeExtension] once the code is generated.
///
/// ```dart
/// class MyoroCheckboxThemeExtension with _$MyoroCheckboxThemeExtensionMixin {}
/// ```
mixin _$MyoroCheckboxThemeExtensionMixin on ThemeExtension<MyoroCheckboxThemeExtension> {
  MyoroCheckboxThemeExtension get self => this as MyoroCheckboxThemeExtension;

  @override
  MyoroCheckboxThemeExtension copyWith({
    Color? checkboxActiveColor,
    bool checkboxActiveColorProvided = true,
    Color? checkboxCheckColor,
    bool checkboxCheckColorProvided = true,
    Color? checkboxHoverColor,
    bool checkboxHoverColorProvided = true,
    Color? checkboxFocusColor,
    bool checkboxFocusColorProvided = true,
    double? checkboxSplashRadius,
    bool checkboxSplashRadiusProvided = true,
    TextStyle? labelTextStyle,
    bool labelTextStyleProvided = true,
    int? labelMaxLines,
    bool labelMaxLinesProvided = true,
    double? spacing,
    bool spacingProvided = true,
  }) {
    return MyoroCheckboxThemeExtension(
      checkboxActiveColor: checkboxActiveColorProvided ? (checkboxActiveColor ?? self.checkboxActiveColor) : null,
      checkboxCheckColor: checkboxCheckColorProvided ? (checkboxCheckColor ?? self.checkboxCheckColor) : null,
      checkboxHoverColor: checkboxHoverColorProvided ? (checkboxHoverColor ?? self.checkboxHoverColor) : null,
      checkboxFocusColor: checkboxFocusColorProvided ? (checkboxFocusColor ?? self.checkboxFocusColor) : null,
      checkboxSplashRadius: checkboxSplashRadiusProvided ? (checkboxSplashRadius ?? self.checkboxSplashRadius) : null,
      labelTextStyle: labelTextStyleProvided ? (labelTextStyle ?? self.labelTextStyle) : null,
      labelMaxLines: labelMaxLinesProvided ? (labelMaxLines ?? self.labelMaxLines) : null,
      spacing: spacingProvided ? (spacing ?? self.spacing) : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroCheckboxThemeExtension &&
        other.runtimeType == runtimeType &&
        other.checkboxActiveColor == self.checkboxActiveColor &&
        other.checkboxCheckColor == self.checkboxCheckColor &&
        other.checkboxHoverColor == self.checkboxHoverColor &&
        other.checkboxFocusColor == self.checkboxFocusColor &&
        other.checkboxSplashRadius == self.checkboxSplashRadius &&
        other.labelTextStyle == self.labelTextStyle &&
        other.labelMaxLines == self.labelMaxLines &&
        other.spacing == self.spacing;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.checkboxActiveColor,
      self.checkboxCheckColor,
      self.checkboxHoverColor,
      self.checkboxFocusColor,
      self.checkboxSplashRadius,
      self.labelTextStyle,
      self.labelMaxLines,
      self.spacing,
    );
  }

  @override
  String toString() =>
      'MyoroCheckboxThemeExtension(\n'
      '  checkboxActiveColor: ${self.checkboxActiveColor},\n'
      '  checkboxCheckColor: ${self.checkboxCheckColor},\n'
      '  checkboxHoverColor: ${self.checkboxHoverColor},\n'
      '  checkboxFocusColor: ${self.checkboxFocusColor},\n'
      '  checkboxSplashRadius: ${self.checkboxSplashRadius},\n'
      '  labelTextStyle: ${self.labelTextStyle},\n'
      '  labelMaxLines: ${self.labelMaxLines},\n'
      '  spacing: ${self.spacing},\n'
      ');';
}
