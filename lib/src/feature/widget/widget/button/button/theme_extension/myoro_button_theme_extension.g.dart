// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_button_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroButtonThemeExtension] once the code is generated.
///
/// ```dart
/// class MyoroButtonThemeExtension with _$MyoroButtonThemeExtensionMixin {}
/// ```
mixin _$MyoroButtonThemeExtensionMixin on ThemeExtension<MyoroButtonThemeExtension> {
  MyoroButtonThemeExtension get self => this as MyoroButtonThemeExtension;

  @override
  MyoroButtonThemeExtension copyWith({
    Color? backgroundIdleColor,
    bool backgroundIdleColorProvided = true,
    Color? backgroundHoverColor,
    bool backgroundHoverColorProvided = true,
    Color? backgroundTapColor,
    bool backgroundTapColorProvided = true,
    Color? contentIdleColor,
    bool contentIdleColorProvided = true,
    Color? contentHoverColor,
    bool contentHoverColorProvided = true,
    Color? contentTapColor,
    bool contentTapColorProvided = true,
    double? borderWidth,
    bool borderWidthProvided = true,
    BorderRadius? borderRadius,
    bool borderRadiusProvided = true,
    Color? borderIdleColor,
    bool borderIdleColorProvided = true,
    Color? borderHoverColor,
    bool borderHoverColorProvided = true,
    Color? borderTapColor,
    bool borderTapColorProvided = true,
  }) {
    return MyoroButtonThemeExtension(
      backgroundIdleColor: backgroundIdleColorProvided ? (backgroundIdleColor ?? self.backgroundIdleColor) : null,
      backgroundHoverColor: backgroundHoverColorProvided ? (backgroundHoverColor ?? self.backgroundHoverColor) : null,
      backgroundTapColor: backgroundTapColorProvided ? (backgroundTapColor ?? self.backgroundTapColor) : null,
      contentIdleColor: contentIdleColorProvided ? (contentIdleColor ?? self.contentIdleColor) : null,
      contentHoverColor: contentHoverColorProvided ? (contentHoverColor ?? self.contentHoverColor) : null,
      contentTapColor: contentTapColorProvided ? (contentTapColor ?? self.contentTapColor) : null,
      borderWidth: borderWidthProvided ? (borderWidth ?? self.borderWidth) : null,
      borderRadius: borderRadiusProvided ? (borderRadius ?? self.borderRadius) : null,
      borderIdleColor: borderIdleColorProvided ? (borderIdleColor ?? self.borderIdleColor) : null,
      borderHoverColor: borderHoverColorProvided ? (borderHoverColor ?? self.borderHoverColor) : null,
      borderTapColor: borderTapColorProvided ? (borderTapColor ?? self.borderTapColor) : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroButtonThemeExtension &&
        other.runtimeType == runtimeType &&
        other.backgroundIdleColor == self.backgroundIdleColor &&
        other.backgroundHoverColor == self.backgroundHoverColor &&
        other.backgroundTapColor == self.backgroundTapColor &&
        other.contentIdleColor == self.contentIdleColor &&
        other.contentHoverColor == self.contentHoverColor &&
        other.contentTapColor == self.contentTapColor &&
        other.borderWidth == self.borderWidth &&
        other.borderRadius == self.borderRadius &&
        other.borderIdleColor == self.borderIdleColor &&
        other.borderHoverColor == self.borderHoverColor &&
        other.borderTapColor == self.borderTapColor;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.backgroundIdleColor,
      self.backgroundHoverColor,
      self.backgroundTapColor,
      self.contentIdleColor,
      self.contentHoverColor,
      self.contentTapColor,
      self.borderWidth,
      self.borderRadius,
      self.borderIdleColor,
      self.borderHoverColor,
      self.borderTapColor,
    );
  }

  @override
  String toString() =>
      'MyoroButtonThemeExtension(\n'
      '  backgroundIdleColor: ${self.backgroundIdleColor},\n'
      '  backgroundHoverColor: ${self.backgroundHoverColor},\n'
      '  backgroundTapColor: ${self.backgroundTapColor},\n'
      '  contentIdleColor: ${self.contentIdleColor},\n'
      '  contentHoverColor: ${self.contentHoverColor},\n'
      '  contentTapColor: ${self.contentTapColor},\n'
      '  borderWidth: ${self.borderWidth},\n'
      '  borderRadius: ${self.borderRadius},\n'
      '  borderIdleColor: ${self.borderIdleColor},\n'
      '  borderHoverColor: ${self.borderHoverColor},\n'
      '  borderTapColor: ${self.borderTapColor},\n'
      ');';
}
