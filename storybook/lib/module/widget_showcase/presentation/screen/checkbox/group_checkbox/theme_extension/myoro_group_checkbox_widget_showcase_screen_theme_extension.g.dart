// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_group_checkbox_widget_showcase_screen_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroGroupCheckboxWidgetShowcaseScreenThemeExtension] once the code is generated.
///
/// ```dart
/// class MyoroGroupCheckboxWidgetShowcaseScreenThemeExtension with _$MyoroGroupCheckboxWidgetShowcaseScreenThemeExtensionMixin {}
/// ```
mixin _$MyoroGroupCheckboxWidgetShowcaseScreenThemeExtensionMixin
    on ThemeExtension<MyoroGroupCheckboxWidgetShowcaseScreenThemeExtension> {
  MyoroGroupCheckboxWidgetShowcaseScreenThemeExtension get self =>
      this as MyoroGroupCheckboxWidgetShowcaseScreenThemeExtension;

  @override
  MyoroGroupCheckboxWidgetShowcaseScreenThemeExtension copyWith({
    double? spacingOptionsMinValue,
    double? spacingOptionsMaxValue,
  }) {
    return MyoroGroupCheckboxWidgetShowcaseScreenThemeExtension(
      spacingOptionsMinValue: spacingOptionsMinValue ?? self.spacingOptionsMinValue,
      spacingOptionsMaxValue: spacingOptionsMaxValue ?? self.spacingOptionsMaxValue,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroGroupCheckboxWidgetShowcaseScreenThemeExtension &&
        other.runtimeType == runtimeType &&
        other.spacingOptionsMinValue == self.spacingOptionsMinValue &&
        other.spacingOptionsMaxValue == self.spacingOptionsMaxValue;
  }

  @override
  int get hashCode {
    return Object.hash(self.spacingOptionsMinValue, self.spacingOptionsMaxValue);
  }

  @override
  String toString() =>
      'MyoroGroupCheckboxWidgetShowcaseScreenThemeExtension(\n'
      '  spacingOptionsMinValue: ${self.spacingOptionsMinValue},\n'
      '  spacingOptionsMaxValue: ${self.spacingOptionsMaxValue},\n'
      ');';
}
