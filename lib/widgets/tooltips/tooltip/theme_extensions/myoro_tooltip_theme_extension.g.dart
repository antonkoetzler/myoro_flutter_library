// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_tooltip_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

/// Apply this mixin to [MyoroTooltipThemeExtension] once the code is generated.
///
/// ```dart
/// class MyoroTooltipThemeExtension with $MyoroTooltipThemeExtensionMixin {}
/// ```
mixin $MyoroTooltipThemeExtensionMixin
    on ThemeExtension<MyoroTooltipThemeExtension> {
  MyoroTooltipThemeExtension get self => this as MyoroTooltipThemeExtension;

  @override
  MyoroTooltipThemeExtension copyWith({EdgeInsets? margin}) {
    return MyoroTooltipThemeExtension(margin: margin ?? self.margin);
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroTooltipThemeExtension &&
        other.runtimeType == runtimeType &&
        other.margin == self.margin;
  }

  @override
  int get hashCode {
    return Object.hashAll([self.margin]);
  }

  @override
  String toString() =>
      'MyoroTooltipThemeExtension(\n'
      '  margin: ${self.margin},\n'
      ');';
}
