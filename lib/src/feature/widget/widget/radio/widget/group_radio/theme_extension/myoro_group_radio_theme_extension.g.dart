// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_group_radio_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroGroupRadioThemeExtension] once the code is generated.
///
/// ```dart
/// class MyoroGroupRadioThemeExtension with _$MyoroGroupRadioThemeExtensionMixin {}
/// ```
mixin _$MyoroGroupRadioThemeExtensionMixin on ThemeExtension<MyoroGroupRadioThemeExtension> {
  MyoroGroupRadioThemeExtension get self => this as MyoroGroupRadioThemeExtension;

  @override
  MyoroGroupRadioThemeExtension copyWith({double? spacing, double? runSpacing}) {
    return MyoroGroupRadioThemeExtension(spacing: spacing ?? self.spacing, runSpacing: runSpacing ?? self.runSpacing);
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroGroupRadioThemeExtension &&
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
      'MyoroGroupRadioThemeExtension(\n'
      '  spacing: ${self.spacing},\n'
      '  runSpacing: ${self.runSpacing},\n'
      ');';
}
