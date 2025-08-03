// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_group_checkbox_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

/// Apply this mixin to [MyoroGroupCheckboxThemeExtension] once the code is generated.
///
/// ```dart
/// class MyoroGroupCheckboxThemeExtension with _$MyoroGroupCheckboxThemeExtensionMixin {}
/// ```
mixin _$MyoroGroupCheckboxThemeExtensionMixin on ThemeExtension<MyoroGroupCheckboxThemeExtension> {
  MyoroGroupCheckboxThemeExtension get self => this as MyoroGroupCheckboxThemeExtension;

  @override
  MyoroGroupCheckboxThemeExtension copyWith({double? spacing, double? runSpacing}) {
    return MyoroGroupCheckboxThemeExtension(
      spacing: spacing ?? self.spacing,
      runSpacing: runSpacing ?? self.runSpacing,
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
