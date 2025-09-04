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
    EdgeInsets? contentPadding,
    bool contentPaddingProvided = true,
    double? spacing,
    bool spacingProvided = true,
    TextStyle? textStyle,
    bool textStyleProvided = true,
    Color? contentIdleColor,
    bool contentIdleColorProvided = true,
    Color? contentHoverColor,
    bool contentHoverColorProvided = true,
    Color? contentTapColor,
    bool contentTapColorProvided = true,
  }) {
    return MyoroIconTextButtonThemeExtension(
      contentPadding: contentPaddingProvided ? (contentPadding ?? self.contentPadding) : null,
      spacing: spacingProvided ? (spacing ?? self.spacing) : null,
      textStyle: textStyleProvided ? (textStyle ?? self.textStyle) : null,
      contentIdleColor: contentIdleColorProvided ? (contentIdleColor ?? self.contentIdleColor) : null,
      contentHoverColor: contentHoverColorProvided ? (contentHoverColor ?? self.contentHoverColor) : null,
      contentTapColor: contentTapColorProvided ? (contentTapColor ?? self.contentTapColor) : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroIconTextButtonThemeExtension &&
        other.runtimeType == runtimeType &&
        other.contentPadding == self.contentPadding &&
        other.spacing == self.spacing &&
        other.textStyle == self.textStyle &&
        other.contentIdleColor == self.contentIdleColor &&
        other.contentHoverColor == self.contentHoverColor &&
        other.contentTapColor == self.contentTapColor;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.contentPadding,
      self.spacing,
      self.textStyle,
      self.contentIdleColor,
      self.contentHoverColor,
      self.contentTapColor,
    );
  }

  @override
  String toString() =>
      'MyoroIconTextButtonThemeExtension(\n'
      '  contentPadding: ${self.contentPadding},\n'
      '  spacing: ${self.spacing},\n'
      '  textStyle: ${self.textStyle},\n'
      '  contentIdleColor: ${self.contentIdleColor},\n'
      '  contentHoverColor: ${self.contentHoverColor},\n'
      '  contentTapColor: ${self.contentTapColor},\n'
      ');';
}
