// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_scrollable_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroScrollableThemeExtension] once the code is generated.
///
/// ```dart
/// class MyoroScrollableThemeExtension with _$MyoroScrollableThemeExtensionMixin {}
/// ```
mixin _$MyoroScrollableThemeExtensionMixin on ThemeExtension<MyoroScrollableThemeExtension> {
  MyoroScrollableThemeExtension get self => this as MyoroScrollableThemeExtension;

  @override
  MyoroScrollableThemeExtension copyWith({
    Color? gradientTopColor,
    bool gradientTopColorProvided = true,
    Color? gradientBottomColor,
    bool gradientBottomColorProvided = true,
    Color? gradientLeftColor,
    bool gradientLeftColorProvided = true,
    Color? gradientRightColor,
    bool gradientRightColorProvided = true,
    double? gradientSize,
    bool gradientSizeProvided = true,
    Color? gradientColor,
    bool gradientColorProvided = true,
    double? spacing,
    bool spacingProvided = true,
  }) {
    return MyoroScrollableThemeExtension(
      gradientTopColor: gradientTopColorProvided ? (gradientTopColor ?? self.gradientTopColor) : null,
      gradientBottomColor: gradientBottomColorProvided ? (gradientBottomColor ?? self.gradientBottomColor) : null,
      gradientLeftColor: gradientLeftColorProvided ? (gradientLeftColor ?? self.gradientLeftColor) : null,
      gradientRightColor: gradientRightColorProvided ? (gradientRightColor ?? self.gradientRightColor) : null,
      gradientSize: gradientSizeProvided ? (gradientSize ?? self.gradientSize) : null,
      gradientColor: gradientColorProvided ? (gradientColor ?? self.gradientColor) : null,
      spacing: spacingProvided ? (spacing ?? self.spacing) : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroScrollableThemeExtension &&
        other.runtimeType == runtimeType &&
        other.gradientTopColor == self.gradientTopColor &&
        other.gradientBottomColor == self.gradientBottomColor &&
        other.gradientLeftColor == self.gradientLeftColor &&
        other.gradientRightColor == self.gradientRightColor &&
        other.gradientSize == self.gradientSize &&
        other.gradientColor == self.gradientColor &&
        other.spacing == self.spacing;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.gradientTopColor,
      self.gradientBottomColor,
      self.gradientLeftColor,
      self.gradientRightColor,
      self.gradientSize,
      self.gradientColor,
      self.spacing,
    );
  }

  @override
  String toString() =>
      'MyoroScrollableThemeExtension(\n'
      '  gradientTopColor: ${self.gradientTopColor},\n'
      '  gradientBottomColor: ${self.gradientBottomColor},\n'
      '  gradientLeftColor: ${self.gradientLeftColor},\n'
      '  gradientRightColor: ${self.gradientRightColor},\n'
      '  gradientSize: ${self.gradientSize},\n'
      '  gradientColor: ${self.gradientColor},\n'
      '  spacing: ${self.spacing},\n'
      ');';
}
