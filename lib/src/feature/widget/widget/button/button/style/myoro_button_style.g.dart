// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_button_style.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroButtonStyle] once the code is generated.
///
/// ```dart
/// class MyoroButtonStyle with _$MyoroButtonStyleMixin {}
/// ```
mixin _$MyoroButtonStyleMixin {
  MyoroButtonStyle get self => this as MyoroButtonStyle;

  MyoroButtonStyle copyWith({
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
    Color? borderIdleColor,
    bool borderIdleColorProvided = true,
    Color? borderHoverColor,
    bool borderHoverColorProvided = true,
    Color? borderTapColor,
    bool borderTapColorProvided = true,
    BorderRadius? borderRadius,
    bool borderRadiusProvided = true,
  }) {
    return MyoroButtonStyle(
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
      borderIdleColor: borderIdleColorProvided ? (borderIdleColor ?? self.borderIdleColor) : null,
      borderHoverColor: borderHoverColorProvided ? (borderHoverColor ?? self.borderHoverColor) : null,
      borderTapColor: borderTapColorProvided ? (borderTapColor ?? self.borderTapColor) : null,
      borderRadius: borderRadiusProvided ? (borderRadius ?? self.borderRadius) : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroButtonStyle &&
        other.runtimeType == runtimeType &&
        other.backgroundIdleColor == self.backgroundIdleColor &&
        other.backgroundHoverColor == self.backgroundHoverColor &&
        other.backgroundTapColor == self.backgroundTapColor &&
        other.disabledBackgroundColor == self.disabledBackgroundColor &&
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
      self.backgroundIdleColor,
      self.backgroundHoverColor,
      self.backgroundTapColor,
      self.disabledBackgroundColor,
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
      'MyoroButtonStyle(\n'
      '  backgroundIdleColor: ${self.backgroundIdleColor},\n'
      '  backgroundHoverColor: ${self.backgroundHoverColor},\n'
      '  backgroundTapColor: ${self.backgroundTapColor},\n'
      '  disabledBackgroundColor: ${self.disabledBackgroundColor},\n'
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
