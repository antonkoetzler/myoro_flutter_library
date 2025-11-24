// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_field_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroFieldThemeExtension] once the code is generated.
///
/// ```dart
/// class MyoroFieldThemeExtension with _$MyoroFieldThemeExtensionMixin {}
/// ```
mixin _$MyoroFieldThemeExtensionMixin on ThemeExtension<MyoroFieldThemeExtension> {
  MyoroFieldThemeExtension get self => this as MyoroFieldThemeExtension;

  @override
  MyoroFieldThemeExtension copyWith({
    double? spacing,
    bool spacingProvided = true,
    BoxDecoration? decoration,
    bool decorationProvided = true,
    EdgeInsets? contentPadding,
    bool contentPaddingProvided = true,
    MyoroTextStyle? labelTextStyle,
    bool labelTextStyleProvided = true,
    MyoroTextStyle? dataTextStyle,
    bool dataTextStyleProvided = true,
  }) {
    return MyoroFieldThemeExtension(
      spacing: spacingProvided ? (spacing ?? self.spacing) : null,
      decoration: decorationProvided ? (decoration ?? self.decoration) : null,
      contentPadding: contentPaddingProvided ? (contentPadding ?? self.contentPadding) : null,
      labelTextStyle: labelTextStyleProvided ? (labelTextStyle ?? self.labelTextStyle) : null,
      dataTextStyle: dataTextStyleProvided ? (dataTextStyle ?? self.dataTextStyle) : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroFieldThemeExtension &&
        other.runtimeType == runtimeType &&
        other.spacing == self.spacing &&
        other.decoration == self.decoration &&
        other.contentPadding == self.contentPadding &&
        other.labelTextStyle == self.labelTextStyle &&
        other.dataTextStyle == self.dataTextStyle;
  }

  @override
  int get hashCode {
    return Object.hash(self.spacing, self.decoration, self.contentPadding, self.labelTextStyle, self.dataTextStyle);
  }

  @override
  String toString() =>
      'MyoroFieldThemeExtension(\n'
      '  spacing: ${self.spacing},\n'
      '  decoration: ${self.decoration},\n'
      '  contentPadding: ${self.contentPadding},\n'
      '  labelTextStyle: ${self.labelTextStyle},\n'
      '  dataTextStyle: ${self.dataTextStyle},\n'
      ');';
}
