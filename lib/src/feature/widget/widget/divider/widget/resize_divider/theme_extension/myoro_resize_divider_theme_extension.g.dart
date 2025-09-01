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
    Color? secondary,
    double? resizeButtonShortValue,
    double? resizeButtonLongValue,
    BorderRadius? resizeButtonBorderRadius,
  }) {
    return MyoroResizeDividerThemeExtension(
      secondary: secondary ?? self.secondary,
      resizeButtonShortValue: resizeButtonShortValue ?? self.resizeButtonShortValue,
      resizeButtonLongValue: resizeButtonLongValue ?? self.resizeButtonLongValue,
      resizeButtonBorderRadius: resizeButtonBorderRadius ?? self.resizeButtonBorderRadius,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroResizeDividerThemeExtension &&
        other.runtimeType == runtimeType &&
        other.secondary == self.secondary &&
        other.resizeButtonShortValue == self.resizeButtonShortValue &&
        other.resizeButtonLongValue == self.resizeButtonLongValue &&
        other.resizeButtonBorderRadius == self.resizeButtonBorderRadius;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.secondary,
      self.resizeButtonShortValue,
      self.resizeButtonLongValue,
      self.resizeButtonBorderRadius,
    );
  }

  @override
  String toString() =>
      'MyoroResizeDividerThemeExtension(\n'
      '  secondary: ${self.secondary},\n'
      '  resizeButtonShortValue: ${self.resizeButtonShortValue},\n'
      '  resizeButtonLongValue: ${self.resizeButtonLongValue},\n'
      '  resizeButtonBorderRadius: ${self.resizeButtonBorderRadius},\n'
      ');';
}
