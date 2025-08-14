// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_sliders_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

/// Apply this mixin to [MyoroSlidersThemeExtension] once the code is generated.
///
/// ```dart
/// class MyoroSlidersThemeExtension with _$MyoroSlidersThemeExtensionMixin {}
/// ```
mixin _$MyoroSlidersThemeExtensionMixin on ThemeExtension<MyoroSlidersThemeExtension> {
  MyoroSlidersThemeExtension get self => this as MyoroSlidersThemeExtension;

  @override
  MyoroSlidersThemeExtension copyWith({TextStyle? indicatorTextStyle, TextAlign? indicatorTextAlignment}) {
    return MyoroSlidersThemeExtension(
      indicatorTextStyle: indicatorTextStyle ?? self.indicatorTextStyle,
      indicatorTextAlignment: indicatorTextAlignment ?? self.indicatorTextAlignment,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroSlidersThemeExtension &&
        other.runtimeType == runtimeType &&
        other.indicatorTextStyle == self.indicatorTextStyle &&
        other.indicatorTextAlignment == self.indicatorTextAlignment;
  }

  @override
  int get hashCode {
    return Object.hash(self.indicatorTextStyle, self.indicatorTextAlignment);
  }

  @override
  String toString() =>
      'MyoroSlidersThemeExtension(\n'
      '  indicatorTextStyle: ${self.indicatorTextStyle},\n'
      '  indicatorTextAlignment: ${self.indicatorTextAlignment},\n'
      ');';
}
