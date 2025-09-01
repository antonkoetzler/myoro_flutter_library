// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_file_picker_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroFilePickerThemeExtension] once the code is generated.
///
/// ```dart
/// class MyoroFilePickerThemeExtension with _$MyoroFilePickerThemeExtensionMixin {}
/// ```
mixin _$MyoroFilePickerThemeExtensionMixin on ThemeExtension<MyoroFilePickerThemeExtension> {
  MyoroFilePickerThemeExtension get self => this as MyoroFilePickerThemeExtension;

  @override
  MyoroFilePickerThemeExtension copyWith({double? spacing, TextStyle? textStyle}) {
    return MyoroFilePickerThemeExtension(spacing: spacing ?? self.spacing, textStyle: textStyle ?? self.textStyle);
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroFilePickerThemeExtension &&
        other.runtimeType == runtimeType &&
        other.spacing == self.spacing &&
        other.textStyle == self.textStyle;
  }

  @override
  int get hashCode {
    return Object.hash(self.spacing, self.textStyle);
  }

  @override
  String toString() =>
      'MyoroFilePickerThemeExtension(\n'
      '  spacing: ${self.spacing},\n'
      '  textStyle: ${self.textStyle},\n'
      ');';
}
