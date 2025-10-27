// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_basic_divider_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroBasicDividerThemeExtension] once the code is generated.
///
/// ```dart
/// class MyoroBasicDividerThemeExtension with _$MyoroBasicDividerThemeExtensionMixin {}
/// ```
mixin _$MyoroBasicDividerThemeExtensionMixin
    on ThemeExtension<MyoroBasicDividerThemeExtension> {
  MyoroBasicDividerThemeExtension get self =>
      this as MyoroBasicDividerThemeExtension;

  @override
  MyoroBasicDividerThemeExtension copyWith({
    Color? color,
    bool colorProvided = true,
    double? shortValue,
    bool shortValueProvided = true,
    double? longValue,
    bool longValueProvided = true,
  }) {
    return MyoroBasicDividerThemeExtension(
      color: colorProvided ? (color ?? self.color) : null,
      shortValue: shortValueProvided ? (shortValue ?? self.shortValue) : null,
      longValue: longValueProvided ? (longValue ?? self.longValue) : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroBasicDividerThemeExtension &&
        other.runtimeType == runtimeType &&
        other.color == self.color &&
        other.shortValue == self.shortValue &&
        other.longValue == self.longValue;
  }

  @override
  int get hashCode {
    return Object.hash(self.color, self.shortValue, self.longValue);
  }

  @override
  String toString() =>
      'MyoroBasicDividerThemeExtension(\n'
      '  color: ${self.color},\n'
      '  shortValue: ${self.shortValue},\n'
      '  longValue: ${self.longValue},\n'
      ');';
}
