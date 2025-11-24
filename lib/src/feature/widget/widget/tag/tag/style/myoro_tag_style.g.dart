// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_tag_style.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroTagStyle] once the code is generated.
///
/// ```dart
/// class MyoroTagStyle with _$MyoroTagStyleMixin {}
/// ```
mixin _$MyoroTagStyleMixin {
  MyoroTagStyle get self => this as MyoroTagStyle;

  MyoroTagStyle copyWith({
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
    return MyoroTagStyle(
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
    return other is MyoroTagStyle &&
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
      'MyoroTagStyle(\n'
      '  backgroundColor: ${self.backgroundColor},\n'
      '  contentPadding: ${self.contentPadding},\n'
      '  borderRadius: ${self.borderRadius},\n'
      '  border: ${self.border},\n'
      '  spacing: ${self.spacing},\n'
      '  iconSize: ${self.iconSize},\n'
      '  textStyle: ${self.textStyle},\n'
      ');';
}
