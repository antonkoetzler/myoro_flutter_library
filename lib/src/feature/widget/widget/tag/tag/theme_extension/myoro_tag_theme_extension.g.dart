// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_tag_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroTagThemeExtension] once the code is generated.
///
/// ```dart
/// class MyoroTagThemeExtension with _$MyoroTagThemeExtensionMixin {}
/// ```
mixin _$MyoroTagThemeExtensionMixin on ThemeExtension<MyoroTagThemeExtension> {
  MyoroTagThemeExtension get self => this as MyoroTagThemeExtension;

  @override
  MyoroTagThemeExtension copyWith({
    Color? backgroundColor,
    bool backgroundColorProvided = true,
    EdgeInsets? contentPadding,
    bool contentPaddingProvided = true,
    BorderRadius? borderRadius,
    bool borderRadiusProvided = true,
    Border? border,
    bool borderProvided = true,
    double? spacing,
    bool spacingProvided = true,
    double? iconSize,
    bool iconSizeProvided = true,
    MyoroTextStyle? textStyle,
    bool textStyleProvided = true,
  }) {
    return MyoroTagThemeExtension(
      backgroundColor: backgroundColorProvided ? (backgroundColor ?? self.backgroundColor) : null,
      contentPadding: contentPaddingProvided ? (contentPadding ?? self.contentPadding) : null,
      borderRadius: borderRadiusProvided ? (borderRadius ?? self.borderRadius) : null,
      border: borderProvided ? (border ?? self.border) : null,
      spacing: spacingProvided ? (spacing ?? self.spacing) : null,
      iconSize: iconSizeProvided ? (iconSize ?? self.iconSize) : null,
      textStyle: textStyleProvided ? (textStyle ?? self.textStyle) : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroTagThemeExtension &&
        other.runtimeType == runtimeType &&
        other.backgroundColor == self.backgroundColor &&
        other.contentPadding == self.contentPadding &&
        other.borderRadius == self.borderRadius &&
        other.border == self.border &&
        other.spacing == self.spacing &&
        other.iconSize == self.iconSize &&
        other.textStyle == self.textStyle;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.backgroundColor,
      self.contentPadding,
      self.borderRadius,
      self.border,
      self.spacing,
      self.iconSize,
      self.textStyle,
    );
  }

  @override
  String toString() =>
      'MyoroTagThemeExtension(\n'
      '  backgroundColor: ${self.backgroundColor},\n'
      '  contentPadding: ${self.contentPadding},\n'
      '  borderRadius: ${self.borderRadius},\n'
      '  border: ${self.border},\n'
      '  spacing: ${self.spacing},\n'
      '  iconSize: ${self.iconSize},\n'
      '  textStyle: ${self.textStyle},\n'
      ');';
}
