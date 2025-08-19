// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_icon_text_button_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroIconTextButtonThemeExtension] once the code is generated.
///
/// ```dart
/// class MyoroIconTextButtonThemeExtension with _$MyoroIconTextButtonThemeExtensionMixin {}
/// ```
mixin _$MyoroIconTextButtonThemeExtensionMixin on ThemeExtension<MyoroIconTextButtonThemeExtension> {
  MyoroIconTextButtonThemeExtension get self => this as MyoroIconTextButtonThemeExtension;

  @override
  MyoroIconTextButtonThemeExtension copyWith({EdgeInsets? contentPadding, double? spacing, TextStyle? textStyle}) {
    return MyoroIconTextButtonThemeExtension(
      contentPadding: contentPadding ?? self.contentPadding,
      spacing: spacing ?? self.spacing,
      textStyle: textStyle ?? self.textStyle,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroIconTextButtonThemeExtension &&
        other.runtimeType == runtimeType &&
        other.contentPadding == self.contentPadding &&
        other.spacing == self.spacing &&
        other.textStyle == self.textStyle;
  }

  @override
  int get hashCode {
    return Object.hash(self.contentPadding, self.spacing, self.textStyle);
  }

  @override
  String toString() =>
      'MyoroIconTextButtonThemeExtension(\n'
      '  contentPadding: ${self.contentPadding},\n'
      '  spacing: ${self.spacing},\n'
      '  textStyle: ${self.textStyle},\n'
      ');';
}
