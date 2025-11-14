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
    TextStyle? labelTextStyle,
    bool labelTextStyleProvided = true,
    TextStyle? dataTextStyle,
    bool dataTextStyleProvided = true,
    double? spacing,
    bool spacingProvided = true,
  }) {
    return MyoroFieldThemeExtension(
      labelTextStyle: labelTextStyleProvided ? (labelTextStyle ?? self.labelTextStyle) : null,
      dataTextStyle: dataTextStyleProvided ? (dataTextStyle ?? self.dataTextStyle) : null,
      spacing: spacingProvided ? (spacing ?? self.spacing) : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroFieldThemeExtension &&
        other.runtimeType == runtimeType &&
        other.labelTextStyle == self.labelTextStyle &&
        other.dataTextStyle == self.dataTextStyle &&
        other.spacing == self.spacing;
  }

  @override
  int get hashCode {
    return Object.hash(self.labelTextStyle, self.dataTextStyle, self.spacing);
  }

  @override
  String toString() =>
      'MyoroFieldThemeExtension(\n'
      '  labelTextStyle: ${self.labelTextStyle},\n'
      '  dataTextStyle: ${self.dataTextStyle},\n'
      '  spacing: ${self.spacing},\n'
      ');';
}
