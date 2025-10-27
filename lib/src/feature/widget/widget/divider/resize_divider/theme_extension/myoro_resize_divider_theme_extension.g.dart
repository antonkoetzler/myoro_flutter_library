// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_resize_divider_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroResizeDividerThemeExtension] once the code is generated.
///
/// ```dart
/// class MyoroResizeDividerThemeExtension with _$MyoroResizeDividerThemeExtensionMixin {}
/// ```
mixin _$MyoroResizeDividerThemeExtensionMixin
    on ThemeExtension<MyoroResizeDividerThemeExtension> {
  MyoroResizeDividerThemeExtension get self =>
      this as MyoroResizeDividerThemeExtension;

  @override
  MyoroResizeDividerThemeExtension copyWith({
    Color? color,
    bool colorProvided = true,
    double? shortValue,
    bool shortValueProvided = true,
    double? longValue,
    bool longValueProvided = true,
    BorderRadius? resizeButtonBorderRadius,
    bool resizeButtonBorderRadiusProvided = true,
    Color? resizeButtonColor,
    bool resizeButtonColorProvided = true,
    double? resizeButtonShortValue,
    bool resizeButtonShortValueProvided = true,
    double? resizeButtonLongValue,
    bool resizeButtonLongValueProvided = true,
  }) {
    return MyoroResizeDividerThemeExtension(
      color: colorProvided ? (color ?? self.color) : null,
      shortValue: shortValueProvided ? (shortValue ?? self.shortValue) : null,
      longValue: longValueProvided ? (longValue ?? self.longValue) : null,
      resizeButtonBorderRadius: resizeButtonBorderRadiusProvided
          ? (resizeButtonBorderRadius ?? self.resizeButtonBorderRadius)
          : null,
      resizeButtonColor: resizeButtonColorProvided
          ? (resizeButtonColor ?? self.resizeButtonColor)
          : null,
      resizeButtonShortValue: resizeButtonShortValueProvided
          ? (resizeButtonShortValue ?? self.resizeButtonShortValue)
          : null,
      resizeButtonLongValue: resizeButtonLongValueProvided
          ? (resizeButtonLongValue ?? self.resizeButtonLongValue)
          : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroResizeDividerThemeExtension &&
        other.runtimeType == runtimeType &&
        other.color == self.color &&
        other.shortValue == self.shortValue &&
        other.longValue == self.longValue &&
        other.resizeButtonBorderRadius == self.resizeButtonBorderRadius &&
        other.resizeButtonColor == self.resizeButtonColor &&
        other.resizeButtonShortValue == self.resizeButtonShortValue &&
        other.resizeButtonLongValue == self.resizeButtonLongValue;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.color,
      self.shortValue,
      self.longValue,
      self.resizeButtonBorderRadius,
      self.resizeButtonColor,
      self.resizeButtonShortValue,
      self.resizeButtonLongValue,
    );
  }

  @override
  String toString() =>
      'MyoroResizeDividerThemeExtension(\n'
      '  color: ${self.color},\n'
      '  shortValue: ${self.shortValue},\n'
      '  longValue: ${self.longValue},\n'
      '  resizeButtonBorderRadius: ${self.resizeButtonBorderRadius},\n'
      '  resizeButtonColor: ${self.resizeButtonColor},\n'
      '  resizeButtonShortValue: ${self.resizeButtonShortValue},\n'
      '  resizeButtonLongValue: ${self.resizeButtonLongValue},\n'
      ');';
}
