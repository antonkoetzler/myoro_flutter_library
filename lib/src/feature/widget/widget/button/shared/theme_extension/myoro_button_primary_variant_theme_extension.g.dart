// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_button_primary_variant_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroButtonPrimaryVariantThemeExtension] once the code is generated.
///
/// ```dart
/// class MyoroButtonPrimaryVariantThemeExtension with _$MyoroButtonPrimaryVariantThemeExtensionMixin {}
/// ```
mixin _$MyoroButtonPrimaryVariantThemeExtensionMixin on ThemeExtension<MyoroButtonPrimaryVariantThemeExtension> {
  MyoroButtonPrimaryVariantThemeExtension get self => this as MyoroButtonPrimaryVariantThemeExtension;

  @override
  MyoroButtonPrimaryVariantThemeExtension copyWith({
    Color? backgroundColor,
    bool backgroundColorProvided = true,
    Color? backgroundIdleColor,
    bool backgroundIdleColorProvided = true,
    Color? backgroundHoverColor,
    bool backgroundHoverColorProvided = true,
    Color? backgroundTapColor,
    bool backgroundTapColorProvided = true,
    Color? contentColor,
    bool contentColorProvided = true,
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
    Color? borderColor,
    bool borderColorProvided = true,
    Color? borderIdleColor,
    bool borderIdleColorProvided = true,
    Color? borderHoverColor,
    bool borderHoverColorProvided = true,
    Color? borderTapColor,
    bool borderTapColorProvided = true,
  }) {
    return MyoroButtonPrimaryVariantThemeExtension(
      backgroundColor: backgroundColorProvided ? (backgroundColor ?? self.backgroundColor) : null,
      backgroundIdleColor: backgroundIdleColorProvided ? (backgroundIdleColor ?? self.backgroundIdleColor) : null,
      backgroundHoverColor: backgroundHoverColorProvided ? (backgroundHoverColor ?? self.backgroundHoverColor) : null,
      backgroundTapColor: backgroundTapColorProvided ? (backgroundTapColor ?? self.backgroundTapColor) : null,
      contentColor: contentColorProvided ? (contentColor ?? self.contentColor) : null,
      contentIdleColor: contentIdleColorProvided ? (contentIdleColor ?? self.contentIdleColor) : null,
      contentHoverColor: contentHoverColorProvided ? (contentHoverColor ?? self.contentHoverColor) : null,
      contentTapColor: contentTapColorProvided ? (contentTapColor ?? self.contentTapColor) : null,
      borderWidth: borderWidthProvided ? (borderWidth ?? self.borderWidth) : null,
      borderRadius: borderRadiusProvided ? (borderRadius ?? self.borderRadius) : null,
      borderColor: borderColorProvided ? (borderColor ?? self.borderColor) : null,
      borderIdleColor: borderIdleColorProvided ? (borderIdleColor ?? self.borderIdleColor) : null,
      borderHoverColor: borderHoverColorProvided ? (borderHoverColor ?? self.borderHoverColor) : null,
      borderTapColor: borderTapColorProvided ? (borderTapColor ?? self.borderTapColor) : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroButtonPrimaryVariantThemeExtension &&
        other.runtimeType == runtimeType &&
        other.backgroundColor == self.backgroundColor &&
        other.backgroundIdleColor == self.backgroundIdleColor &&
        other.backgroundHoverColor == self.backgroundHoverColor &&
        other.backgroundTapColor == self.backgroundTapColor &&
        other.contentColor == self.contentColor &&
        other.contentIdleColor == self.contentIdleColor &&
        other.contentHoverColor == self.contentHoverColor &&
        other.contentTapColor == self.contentTapColor &&
        other.borderWidth == self.borderWidth &&
        other.borderRadius == self.borderRadius &&
        other.borderColor == self.borderColor &&
        other.borderIdleColor == self.borderIdleColor &&
        other.borderHoverColor == self.borderHoverColor &&
        other.borderTapColor == self.borderTapColor;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.backgroundColor,
      self.backgroundIdleColor,
      self.backgroundHoverColor,
      self.backgroundTapColor,
      self.contentColor,
      self.contentIdleColor,
      self.contentHoverColor,
      self.contentTapColor,
      self.borderWidth,
      self.borderRadius,
      self.borderColor,
      self.borderIdleColor,
      self.borderHoverColor,
      self.borderTapColor,
    );
  }

  @override
  String toString() =>
      'MyoroButtonPrimaryVariantThemeExtension(\n'
      '  backgroundColor: ${self.backgroundColor},\n'
      '  backgroundIdleColor: ${self.backgroundIdleColor},\n'
      '  backgroundHoverColor: ${self.backgroundHoverColor},\n'
      '  backgroundTapColor: ${self.backgroundTapColor},\n'
      '  contentColor: ${self.contentColor},\n'
      '  contentIdleColor: ${self.contentIdleColor},\n'
      '  contentHoverColor: ${self.contentHoverColor},\n'
      '  contentTapColor: ${self.contentTapColor},\n'
      '  borderWidth: ${self.borderWidth},\n'
      '  borderRadius: ${self.borderRadius},\n'
      '  borderColor: ${self.borderColor},\n'
      '  borderIdleColor: ${self.borderIdleColor},\n'
      '  borderHoverColor: ${self.borderHoverColor},\n'
      '  borderTapColor: ${self.borderTapColor},\n'
      ');';
}
