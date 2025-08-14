// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_sliders_widget_showcase_screen_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

/// Apply this mixin to [MyoroSlidersWidgetShowcaseScreenThemeExtension] once the code is generated.
///
/// ```dart
/// class MyoroSlidersWidgetShowcaseScreenThemeExtension with _$MyoroSlidersWidgetShowcaseScreenThemeExtensionMixin {}
/// ```
mixin _$MyoroSlidersWidgetShowcaseScreenThemeExtensionMixin
    on ThemeExtension<MyoroSlidersWidgetShowcaseScreenThemeExtension> {
  MyoroSlidersWidgetShowcaseScreenThemeExtension get self => this as MyoroSlidersWidgetShowcaseScreenThemeExtension;

  @override
  MyoroSlidersWidgetShowcaseScreenThemeExtension copyWith({double? spacing}) {
    return MyoroSlidersWidgetShowcaseScreenThemeExtension(spacing: spacing ?? self.spacing);
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroSlidersWidgetShowcaseScreenThemeExtension &&
        other.runtimeType == runtimeType &&
        other.spacing == self.spacing;
  }

  @override
  int get hashCode {
    return Object.hashAll([self.spacing]);
  }

  @override
  String toString() =>
      'MyoroSlidersWidgetShowcaseScreenThemeExtension(\n'
      '  spacing: ${self.spacing},\n'
      ');';
}
