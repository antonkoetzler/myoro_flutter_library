// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_form_widget_showcase_screen_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroFormWidgetShowcaseScreenThemeExtension] once the code is generated.
///
/// ```dart
/// class MyoroFormWidgetShowcaseScreenThemeExtension with _$MyoroFormWidgetShowcaseScreenThemeExtensionMixin {}
/// ```
mixin _$MyoroFormWidgetShowcaseScreenThemeExtensionMixin
    on ThemeExtension<MyoroFormWidgetShowcaseScreenThemeExtension> {
  MyoroFormWidgetShowcaseScreenThemeExtension get self => this as MyoroFormWidgetShowcaseScreenThemeExtension;

  @override
  MyoroFormWidgetShowcaseScreenThemeExtension copyWith({BorderRadius? kittyBorderRadius, double? kittySize}) {
    return MyoroFormWidgetShowcaseScreenThemeExtension(
      kittyBorderRadius: kittyBorderRadius ?? self.kittyBorderRadius,
      kittySize: kittySize ?? self.kittySize,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroFormWidgetShowcaseScreenThemeExtension &&
        other.runtimeType == runtimeType &&
        other.kittyBorderRadius == self.kittyBorderRadius &&
        other.kittySize == self.kittySize;
  }

  @override
  int get hashCode {
    return Object.hash(self.kittyBorderRadius, self.kittySize);
  }

  @override
  String toString() =>
      'MyoroFormWidgetShowcaseScreenThemeExtension(\n'
      '  kittyBorderRadius: ${self.kittyBorderRadius},\n'
      '  kittySize: ${self.kittySize},\n'
      ');';
}
