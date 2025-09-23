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
    BorderRadius? resizeButtonBorderRadius,
    bool resizeButtonBorderRadiusProvided = true,
    Color? resizeButtonColor,
    bool resizeButtonColorProvided = true,
    double? resizeButtonShortValue,
    bool resizeButtonShortValueProvided = true,
    double? resizeButtonLongValue,
    bool resizeButtonLongValueProvided = true,
    dynamic? color,
    dynamic? shortValue,
    dynamic? longValue,
  }) {
    assert(color != null, '[MyoroResizeDividerThemeExtension.copyWith]: [color] cannot be null.');
    assert(shortValue != null, '[MyoroResizeDividerThemeExtension.copyWith]: [shortValue] cannot be null.');
    assert(longValue != null, '[MyoroResizeDividerThemeExtension.copyWith]: [longValue] cannot be null.');

    return MyoroResizeDividerThemeExtension(
      resizeButtonBorderRadius: resizeButtonBorderRadiusProvided
          ? (resizeButtonBorderRadius ?? self.resizeButtonBorderRadius)
          : null,
      resizeButtonColor: resizeButtonColorProvided ? (resizeButtonColor ?? self.resizeButtonColor) : null,
      resizeButtonShortValue: resizeButtonShortValueProvided
          ? (resizeButtonShortValue ?? self.resizeButtonShortValue)
          : null,
      resizeButtonLongValue: resizeButtonLongValueProvided
          ? (resizeButtonLongValue ?? self.resizeButtonLongValue)
          : null,
      color: color!,
      shortValue: shortValue!,
      longValue: longValue!,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroResizeDividerThemeExtension &&
        other.runtimeType == runtimeType &&
        other.resizeButtonBorderRadius == self.resizeButtonBorderRadius &&
        other.resizeButtonColor == self.resizeButtonColor &&
        other.resizeButtonShortValue == self.resizeButtonShortValue &&
        other.resizeButtonLongValue == self.resizeButtonLongValue;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.resizeButtonBorderRadius,
      self.resizeButtonColor,
      self.resizeButtonShortValue,
      self.resizeButtonLongValue,
    );
  }

  @override
  String toString() =>
      'MyoroResizeDividerThemeExtension(\n'
      '  resizeButtonBorderRadius: ${self.resizeButtonBorderRadius},\n'
      '  resizeButtonColor: ${self.resizeButtonColor},\n'
      '  resizeButtonShortValue: ${self.resizeButtonShortValue},\n'
      '  resizeButtonLongValue: ${self.resizeButtonLongValue},\n'
      ');';
}
