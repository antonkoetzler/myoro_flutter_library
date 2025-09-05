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
mixin _$MyoroResizeDividerThemeExtensionMixin on ThemeExtension<MyoroResizeDividerThemeExtension> {
  MyoroResizeDividerThemeExtension get self => this as MyoroResizeDividerThemeExtension;

  @override
  MyoroResizeDividerThemeExtension copyWith({
    Color? resizeButtonColor,
    bool resizeButtonColorProvided = true,
    double? resizeButtonShortValue,
    bool resizeButtonShortValueProvided = true,
    double? resizeButtonLongValue,
    bool resizeButtonLongValueProvided = true,
    BorderRadius? resizeButtonBorderRadius,
    bool resizeButtonBorderRadiusProvided = true,
  }) {
    return MyoroResizeDividerThemeExtension(
      resizeButtonColor: resizeButtonColorProvided ? (resizeButtonColor ?? self.resizeButtonColor) : null,
      resizeButtonShortValue: resizeButtonShortValueProvided
          ? (resizeButtonShortValue ?? self.resizeButtonShortValue)
          : null,
      resizeButtonLongValue: resizeButtonLongValueProvided
          ? (resizeButtonLongValue ?? self.resizeButtonLongValue)
          : null,
      resizeButtonBorderRadius: resizeButtonBorderRadiusProvided
          ? (resizeButtonBorderRadius ?? self.resizeButtonBorderRadius)
          : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroResizeDividerThemeExtension &&
        other.runtimeType == runtimeType &&
        other.resizeButtonColor == self.resizeButtonColor &&
        other.resizeButtonShortValue == self.resizeButtonShortValue &&
        other.resizeButtonLongValue == self.resizeButtonLongValue &&
        other.resizeButtonBorderRadius == self.resizeButtonBorderRadius;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.resizeButtonColor,
      self.resizeButtonShortValue,
      self.resizeButtonLongValue,
      self.resizeButtonBorderRadius,
    );
  }

  @override
  String toString() =>
      'MyoroResizeDividerThemeExtension(\n'
      '  resizeButtonColor: ${self.resizeButtonColor},\n'
      '  resizeButtonShortValue: ${self.resizeButtonShortValue},\n'
      '  resizeButtonLongValue: ${self.resizeButtonLongValue},\n'
      '  resizeButtonBorderRadius: ${self.resizeButtonBorderRadius},\n'
      ');';
}
