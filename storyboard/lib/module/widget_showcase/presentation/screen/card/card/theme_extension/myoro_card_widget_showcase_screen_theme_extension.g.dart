// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_card_widget_showcase_screen_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

/// Apply this mixin to [MyoroCardWidgetShowcaseScreenThemeExtension] once the code is generated.
///
/// ```dart
/// class MyoroCardWidgetShowcaseScreenThemeExtension with _$MyoroCardWidgetShowcaseScreenThemeExtensionMixin {}
/// ```
mixin _$MyoroCardWidgetShowcaseScreenThemeExtensionMixin
    on ThemeExtension<MyoroCardWidgetShowcaseScreenThemeExtension> {
  MyoroCardWidgetShowcaseScreenThemeExtension get self =>
      this as MyoroCardWidgetShowcaseScreenThemeExtension;

  @override
  MyoroCardWidgetShowcaseScreenThemeExtension copyWith({TextStyle? textStyle}) {
    return MyoroCardWidgetShowcaseScreenThemeExtension(
      textStyle: textStyle ?? self.textStyle,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroCardWidgetShowcaseScreenThemeExtension &&
        other.runtimeType == runtimeType &&
        other.textStyle == self.textStyle;
  }

  @override
  int get hashCode {
    return Object.hashAll([self.textStyle]);
  }

  @override
  String toString() =>
      'MyoroCardWidgetShowcaseScreenThemeExtension(\n'
      '  textStyle: ${self.textStyle},\n'
      ');';
}
