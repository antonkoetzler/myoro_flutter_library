// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_input_widget_showcase_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

/// Apply this mixin to [MyoroInputWidgetShowcaseThemeExtension] once the code is generated.
///
/// ```dart
/// class MyoroInputWidgetShowcaseThemeExtension with _$MyoroInputWidgetShowcaseThemeExtensionMixin {}
/// ```
mixin _$MyoroInputWidgetShowcaseThemeExtensionMixin
    on ThemeExtension<MyoroInputWidgetShowcaseThemeExtension> {
  MyoroInputWidgetShowcaseThemeExtension get self =>
      this as MyoroInputWidgetShowcaseThemeExtension;

  @override
  MyoroInputWidgetShowcaseThemeExtension copyWith({
    BorderRadius? suffixBorderRadius,
    double? suffixSize,
  }) {
    return MyoroInputWidgetShowcaseThemeExtension(
      suffixBorderRadius: suffixBorderRadius ?? self.suffixBorderRadius,
      suffixSize: suffixSize ?? self.suffixSize,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroInputWidgetShowcaseThemeExtension &&
        other.runtimeType == runtimeType &&
        other.suffixBorderRadius == self.suffixBorderRadius &&
        other.suffixSize == self.suffixSize;
  }

  @override
  int get hashCode {
    return Object.hash(self.suffixBorderRadius, self.suffixSize);
  }

  @override
  String toString() =>
      'MyoroInputWidgetShowcaseThemeExtension(\n'
      '  suffixBorderRadius: ${self.suffixBorderRadius},\n'
      '  suffixSize: ${self.suffixSize},\n'
      ');';
}
