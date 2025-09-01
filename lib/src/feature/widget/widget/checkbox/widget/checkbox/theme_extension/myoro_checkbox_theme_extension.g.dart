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
    Color? activeColor,
    Color? checkColor,
    Color? hoverColor,
    Color? focusColor,
    double? splashRadius,
    TextStyle? labelTextStyle,
    double? spacing,
  }) {
    return MyoroCheckboxThemeExtension(
      activeColor: activeColor ?? self.activeColor,
      checkColor: checkColor ?? self.checkColor,
      hoverColor: hoverColor ?? self.hoverColor,
      focusColor: focusColor ?? self.focusColor,
      splashRadius: splashRadius ?? self.splashRadius,
      labelTextStyle: labelTextStyle ?? self.labelTextStyle,
      spacing: spacing ?? self.spacing,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroCheckboxThemeExtension &&
        other.runtimeType == runtimeType &&
        other.activeColor == self.activeColor &&
        other.checkColor == self.checkColor &&
        other.hoverColor == self.hoverColor &&
        other.focusColor == self.focusColor &&
        other.splashRadius == self.splashRadius &&
        other.labelTextStyle == self.labelTextStyle &&
        other.spacing == self.spacing;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.activeColor,
      self.checkColor,
      self.hoverColor,
      self.focusColor,
      self.splashRadius,
      self.labelTextStyle,
      self.spacing,
    );
  }

  @override
  String toString() =>
      'MyoroCheckboxThemeExtension(\n'
      '  activeColor: ${self.activeColor},\n'
      '  checkColor: ${self.checkColor},\n'
      '  hoverColor: ${self.hoverColor},\n'
      '  focusColor: ${self.focusColor},\n'
      '  splashRadius: ${self.splashRadius},\n'
      '  labelTextStyle: ${self.labelTextStyle},\n'
      '  spacing: ${self.spacing},\n'
      ');';
}
