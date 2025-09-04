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
    Color? backgroundIdleColor,
    bool backgroundIdleColorProvided = true,
    Color? backgroundHoverColor,
    bool backgroundHoverColorProvided = true,
    Color? backgroundTapColor,
    bool backgroundTapColorProvided = true,
  }) {
    return MyoroButtonThemeExtension(
      backgroundIdleColor: backgroundIdleColorProvided ? (backgroundIdleColor ?? self.backgroundIdleColor) : null,
      backgroundHoverColor: backgroundHoverColorProvided ? (backgroundHoverColor ?? self.backgroundHoverColor) : null,
      backgroundTapColor: backgroundTapColorProvided ? (backgroundTapColor ?? self.backgroundTapColor) : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroButtonThemeExtension &&
        other.runtimeType == runtimeType &&
        other.backgroundIdleColor == self.backgroundIdleColor &&
        other.backgroundHoverColor == self.backgroundHoverColor &&
        other.backgroundTapColor == self.backgroundTapColor;
  }

  @override
  int get hashCode {
    return Object.hash(self.backgroundIdleColor, self.backgroundHoverColor, self.backgroundTapColor);
  }

  @override
  String toString() =>
      'MyoroButtonThemeExtension(\n'
      '  backgroundIdleColor: ${self.backgroundIdleColor},\n'
      '  backgroundHoverColor: ${self.backgroundHoverColor},\n'
      '  backgroundTapColor: ${self.backgroundTapColor},\n'
      ');';
}
