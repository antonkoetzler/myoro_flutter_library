// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_icon_text_button_style.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroIconTextButtonStyle] once the code is generated.
///
/// ```dart
/// class MyoroIconTextButtonStyle with _$MyoroIconTextButtonStyleMixin {}
/// ```
mixin _$MyoroIconTextButtonStyleMixin {
  MyoroIconTextButtonStyle get self => this as MyoroIconTextButtonStyle;

  MyoroIconTextButtonStyle copyWith({
    EdgeInsets? contentPadding,
    bool contentPaddingProvided = true,
    double? spacing,
    bool spacingProvided = true,
    TextStyle? textStyle,
    bool textStyleProvided = true,
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
    Color? borderIdleColor,
    bool borderIdleColorProvided = true,
    Color? borderHoverColor,
    bool borderHoverColorProvided = true,
    Color? borderTapColor,
    bool borderTapColorProvided = true,
    BorderRadius? borderRadius,
    bool borderRadiusProvided = true,
  }) {
    return MyoroIconTextButtonStyle(
      contentPadding: contentPaddingProvided ? (contentPadding ?? self.contentPadding) : null,
      spacing: spacingProvided ? (spacing ?? self.spacing) : null,
      textStyle: textStyleProvided ? (textStyle ?? self.textStyle) : null,
      backgroundIdleColor: backgroundIdleColorProvided ? (backgroundIdleColor ?? self.backgroundIdleColor) : null,
      backgroundHoverColor: backgroundHoverColorProvided ? (backgroundHoverColor ?? self.backgroundHoverColor) : null,
      backgroundTapColor: backgroundTapColorProvided ? (backgroundTapColor ?? self.backgroundTapColor) : null,
      contentIdleColor: contentIdleColorProvided ? (contentIdleColor ?? self.contentIdleColor) : null,
      contentHoverColor: contentHoverColorProvided ? (contentHoverColor ?? self.contentHoverColor) : null,
      contentTapColor: contentTapColorProvided ? (contentTapColor ?? self.contentTapColor) : null,
      borderWidth: borderWidthProvided ? (borderWidth ?? self.borderWidth) : null,
      borderIdleColor: borderIdleColorProvided ? (borderIdleColor ?? self.borderIdleColor) : null,
      borderHoverColor: borderHoverColorProvided ? (borderHoverColor ?? self.borderHoverColor) : null,
      borderTapColor: borderTapColorProvided ? (borderTapColor ?? self.borderTapColor) : null,
      borderRadius: borderRadiusProvided ? (borderRadius ?? self.borderRadius) : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroIconTextButtonStyle &&
        other.runtimeType == runtimeType &&
        other.contentPadding == self.contentPadding &&
        other.spacing == self.spacing &&
        other.textStyle == self.textStyle &&
        other.backgroundIdleColor == self.backgroundIdleColor &&
        other.backgroundHoverColor == self.backgroundHoverColor &&
        other.backgroundTapColor == self.backgroundTapColor &&
        other.contentIdleColor == self.contentIdleColor &&
        other.contentHoverColor == self.contentHoverColor &&
        other.contentTapColor == self.contentTapColor &&
        other.borderWidth == self.borderWidth &&
        other.borderIdleColor == self.borderIdleColor &&
        other.borderHoverColor == self.borderHoverColor &&
        other.borderTapColor == self.borderTapColor &&
        other.borderRadius == self.borderRadius;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.contentPadding,
      self.spacing,
      self.textStyle,
      self.backgroundIdleColor,
      self.backgroundHoverColor,
      self.backgroundTapColor,
      self.contentIdleColor,
      self.contentHoverColor,
      self.contentTapColor,
      self.borderWidth,
      self.borderIdleColor,
      self.borderHoverColor,
      self.borderTapColor,
      self.borderRadius,
    );
  }

  @override
  String toString() =>
      'MyoroIconTextButtonStyle(\n'
      '  contentPadding: ${self.contentPadding},\n'
      '  spacing: ${self.spacing},\n'
      '  textStyle: ${self.textStyle},\n'
      '  backgroundIdleColor: ${self.backgroundIdleColor},\n'
      '  backgroundHoverColor: ${self.backgroundHoverColor},\n'
      '  backgroundTapColor: ${self.backgroundTapColor},\n'
      '  contentIdleColor: ${self.contentIdleColor},\n'
      '  contentHoverColor: ${self.contentHoverColor},\n'
      '  contentTapColor: ${self.contentTapColor},\n'
      '  borderWidth: ${self.borderWidth},\n'
      '  borderIdleColor: ${self.borderIdleColor},\n'
      '  borderHoverColor: ${self.borderHoverColor},\n'
      '  borderTapColor: ${self.borderTapColor},\n'
      '  borderRadius: ${self.borderRadius},\n'
      ');';
}
