// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_input_widget_showcase_screen_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

/// Apply this mixin to [MyoroInputWidgetShowcaseScreenThemeExtension] once the code is generated.
///
/// ```dart
/// class MyoroInputWidgetShowcaseScreenThemeExtension with _$MyoroInputWidgetShowcaseScreenThemeExtensionMixin {}
/// ```
mixin _$MyoroInputWidgetShowcaseScreenThemeExtensionMixin
    on ThemeExtension<MyoroInputWidgetShowcaseScreenThemeExtension> {
  MyoroInputWidgetShowcaseScreenThemeExtension get self =>
      this as MyoroInputWidgetShowcaseScreenThemeExtension;

  @override
  MyoroInputWidgetShowcaseScreenThemeExtension copyWith({
    BorderRadius? suffixBorderRadius,
    double? suffixSize,
  }) {
    return MyoroInputWidgetShowcaseScreenThemeExtension(
      suffixBorderRadius: suffixBorderRadius ?? self.suffixBorderRadius,
      suffixSize: suffixSize ?? self.suffixSize,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroInputWidgetShowcaseScreenThemeExtension &&
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
      'MyoroInputWidgetShowcaseScreenThemeExtension(\n'
      '  suffixBorderRadius: ${self.suffixBorderRadius},\n'
      '  suffixSize: ${self.suffixSize},\n'
      ');';
}
