// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_button_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroButtonThemeExtension] once the code is generated.
///
/// ```dart
/// class MyoroButtonThemeExtension with _$MyoroButtonThemeExtensionMixin {}
/// ```
mixin _$MyoroButtonThemeExtensionMixin on ThemeExtension<MyoroButtonThemeExtension> {
  MyoroButtonThemeExtension get self => this as MyoroButtonThemeExtension;

  @override
  MyoroButtonThemeExtension copyWith({
    BorderRadius? borderRadius,
    bool borderRadiusProvided = true,
    MouseCursor? cursor,
    bool cursorProvided = true,
  }) {
    return MyoroButtonThemeExtension(
      borderRadius: borderRadiusProvided ? (borderRadius ?? self.borderRadius) : null,
      cursor: cursorProvided ? (cursor ?? self.cursor) : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroButtonThemeExtension &&
        other.runtimeType == runtimeType &&
        other.borderRadius == self.borderRadius &&
        other.cursor == self.cursor;
  }

  @override
  int get hashCode {
    return Object.hash(self.borderRadius, self.cursor);
  }

  @override
  String toString() =>
      'MyoroButtonThemeExtension(\n'
      '  borderRadius: ${self.borderRadius},\n'
      '  cursor: ${self.cursor},\n'
      ');';
}
