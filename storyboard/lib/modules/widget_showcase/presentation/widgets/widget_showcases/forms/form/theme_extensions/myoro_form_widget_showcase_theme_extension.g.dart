// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_form_widget_showcase_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

/// Apply this mixin to [MyoroFormWidgetShowcaseThemeExtension] once the code is generated.
///
/// ```dart
/// class MyoroFormWidgetShowcaseThemeExtension with _$MyoroFormWidgetShowcaseThemeExtensionMixin {}
/// ```
mixin _$MyoroFormWidgetShowcaseThemeExtensionMixin
    on ThemeExtension<MyoroFormWidgetShowcaseThemeExtension> {
  MyoroFormWidgetShowcaseThemeExtension get self =>
      this as MyoroFormWidgetShowcaseThemeExtension;

  @override
  MyoroFormWidgetShowcaseThemeExtension copyWith({
    BorderRadius? kittyBorderRadius,
    double? kittySize,
  }) {
    return MyoroFormWidgetShowcaseThemeExtension(
      kittyBorderRadius: kittyBorderRadius ?? self.kittyBorderRadius,
      kittySize: kittySize ?? self.kittySize,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroFormWidgetShowcaseThemeExtension &&
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
      'MyoroFormWidgetShowcaseThemeExtension(\n'
      '  kittyBorderRadius: ${self.kittyBorderRadius},\n'
      '  kittySize: ${self.kittySize},\n'
      ');';
}
