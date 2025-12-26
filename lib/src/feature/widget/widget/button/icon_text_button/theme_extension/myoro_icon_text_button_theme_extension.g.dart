// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_icon_text_button_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroIconTextButtonThemeExtension] once the code is generated.
///
/// ```dart
/// class MyoroIconTextButtonThemeExtension with _$MyoroIconTextButtonThemeExtensionMixin {}
/// ```
mixin _$MyoroIconTextButtonThemeExtensionMixin on ThemeExtension<MyoroIconTextButtonThemeExtension> {
  MyoroIconTextButtonThemeExtension get self => this as MyoroIconTextButtonThemeExtension;

  @override
  MyoroIconTextButtonThemeExtension copyWith({
    Color? backgroundIdleColor,
    bool backgroundIdleColorProvided = true,
    Color? backgroundHoverColor,
    bool backgroundHoverColorProvided = true,
    Color? backgroundTapColor,
    bool backgroundTapColorProvided = true,
    Color? disabledBackgroundColor,
    bool disabledBackgroundColorProvided = true,
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
    EdgeInsets? contentPadding,
    bool contentPaddingProvided = true,
    double? spacing,
    bool spacingProvided = true,
    double? iconSize,
    bool iconSizeProvided = true,
    MyoroTextStyle? textStyle,
    bool textStyleProvided = true,
    BoxConstraints? textConstraints,
    bool textConstraintsProvided = true,
  }) {
    return MyoroIconTextButtonThemeExtension(
      backgroundIdleColor: backgroundIdleColorProvided ? (backgroundIdleColor ?? self.backgroundIdleColor) : null,
      backgroundHoverColor: backgroundHoverColorProvided ? (backgroundHoverColor ?? self.backgroundHoverColor) : null,
      backgroundTapColor: backgroundTapColorProvided ? (backgroundTapColor ?? self.backgroundTapColor) : null,
      disabledBackgroundColor: disabledBackgroundColorProvided
          ? (disabledBackgroundColor ?? self.disabledBackgroundColor)
          : null,
      contentIdleColor: contentIdleColorProvided ? (contentIdleColor ?? self.contentIdleColor) : null,
      contentHoverColor: contentHoverColorProvided ? (contentHoverColor ?? self.contentHoverColor) : null,
      contentTapColor: contentTapColorProvided ? (contentTapColor ?? self.contentTapColor) : null,
      borderWidth: borderWidthProvided ? (borderWidth ?? self.borderWidth) : null,
      borderRadius: borderRadiusProvided ? (borderRadius ?? self.borderRadius) : null,
      borderIdleColor: borderIdleColorProvided ? (borderIdleColor ?? self.borderIdleColor) : null,
      borderHoverColor: borderHoverColorProvided ? (borderHoverColor ?? self.borderHoverColor) : null,
      borderTapColor: borderTapColorProvided ? (borderTapColor ?? self.borderTapColor) : null,
      contentPadding: contentPaddingProvided ? (contentPadding ?? self.contentPadding) : null,
      spacing: spacingProvided ? (spacing ?? self.spacing) : null,
      iconSize: iconSizeProvided ? (iconSize ?? self.iconSize) : null,
      textStyle: textStyleProvided ? (textStyle ?? self.textStyle) : null,
      textConstraints: textConstraintsProvided ? (textConstraints ?? self.textConstraints) : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroIconTextButtonThemeExtension &&
        other.runtimeType == runtimeType &&
        other.backgroundIdleColor == self.backgroundIdleColor &&
        other.backgroundHoverColor == self.backgroundHoverColor &&
        other.backgroundTapColor == self.backgroundTapColor &&
        other.disabledBackgroundColor == self.disabledBackgroundColor &&
        other.contentIdleColor == self.contentIdleColor &&
        other.contentHoverColor == self.contentHoverColor &&
        other.contentTapColor == self.contentTapColor &&
        other.borderWidth == self.borderWidth &&
        other.borderRadius == self.borderRadius &&
        other.borderIdleColor == self.borderIdleColor &&
        other.borderHoverColor == self.borderHoverColor &&
        other.borderTapColor == self.borderTapColor &&
        other.contentPadding == self.contentPadding &&
        other.spacing == self.spacing &&
        other.iconSize == self.iconSize &&
        other.textStyle == self.textStyle &&
        other.textConstraints == self.textConstraints;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.backgroundIdleColor,
      self.backgroundHoverColor,
      self.backgroundTapColor,
      self.disabledBackgroundColor,
      self.contentIdleColor,
      self.contentHoverColor,
      self.contentTapColor,
      self.borderWidth,
      self.borderRadius,
      self.borderIdleColor,
      self.borderHoverColor,
      self.borderTapColor,
      self.contentPadding,
      self.spacing,
      self.iconSize,
      self.textStyle,
      self.textConstraints,
    );
  }

  @override
  String toString() =>
      'MyoroIconTextButtonThemeExtension(\n'
      '  backgroundIdleColor: ${self.backgroundIdleColor},\n'
      '  backgroundHoverColor: ${self.backgroundHoverColor},\n'
      '  backgroundTapColor: ${self.backgroundTapColor},\n'
      '  disabledBackgroundColor: ${self.disabledBackgroundColor},\n'
      '  contentIdleColor: ${self.contentIdleColor},\n'
      '  contentHoverColor: ${self.contentHoverColor},\n'
      '  contentTapColor: ${self.contentTapColor},\n'
      '  borderWidth: ${self.borderWidth},\n'
      '  borderRadius: ${self.borderRadius},\n'
      '  borderIdleColor: ${self.borderIdleColor},\n'
      '  borderHoverColor: ${self.borderHoverColor},\n'
      '  borderTapColor: ${self.borderTapColor},\n'
      '  contentPadding: ${self.contentPadding},\n'
      '  spacing: ${self.spacing},\n'
      '  iconSize: ${self.iconSize},\n'
      '  textStyle: ${self.textStyle},\n'
      '  textConstraints: ${self.textConstraints},\n'
      ');';
}
