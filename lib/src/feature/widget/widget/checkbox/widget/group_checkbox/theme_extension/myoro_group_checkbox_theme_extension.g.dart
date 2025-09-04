// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_group_checkbox_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroGroupCheckboxThemeExtension] once the code is generated.
///
/// ```dart
/// class MyoroGroupCheckboxThemeExtension with _$MyoroGroupCheckboxThemeExtensionMixin {}
/// ```
mixin _$MyoroGroupCheckboxThemeExtensionMixin on ThemeExtension<MyoroGroupCheckboxThemeExtension> {
  MyoroGroupCheckboxThemeExtension get self => this as MyoroGroupCheckboxThemeExtension;

  @override
  MyoroGroupCheckboxThemeExtension copyWith({
    double? spacing,
    bool spacingProvided = true,
    double? runSpacing,
    bool runSpacingProvided = true,
  }) {
    return MyoroGroupCheckboxThemeExtension(
      spacing: spacingProvided ? (spacing ?? self.spacing) : null,
      runSpacing: runSpacingProvided ? (runSpacing ?? self.runSpacing) : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroGroupCheckboxThemeExtension &&
        other.runtimeType == runtimeType &&
        other.spacing == self.spacing &&
        other.runSpacing == self.runSpacing;
  }

  @override
  int get hashCode {
    return Object.hash(self.spacing, self.runSpacing);
  }

  @override
  String toString() =>
      'MyoroGroupCheckboxThemeExtension(\n'
      '  spacing: ${self.spacing},\n'
      '  runSpacing: ${self.runSpacing},\n'
      ');';
}
