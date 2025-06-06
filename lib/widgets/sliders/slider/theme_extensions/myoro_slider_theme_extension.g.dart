// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_slider_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

/// Apply this mixin to [MyoroSliderThemeExtension] once the code is generated.
///
/// ```dart
/// class MyoroSliderThemeExtension with $MyoroSliderThemeExtensionMixin {}
/// ```
mixin $MyoroSliderThemeExtensionMixin
    on ThemeExtension<MyoroSliderThemeExtension> {
  MyoroSliderThemeExtension get self => this as MyoroSliderThemeExtension;

  @override
  MyoroSliderThemeExtension copyWith({
    TextStyle? labelTextStyle,
    EdgeInsets? sliderPadding,
    TextStyle? indicatorTextStyle,
    TextAlign? indicatorTextAlignment,
  }) {
    return MyoroSliderThemeExtension(
      labelTextStyle: labelTextStyle ?? self.labelTextStyle,
      sliderPadding: sliderPadding ?? self.sliderPadding,
      indicatorTextStyle: indicatorTextStyle ?? self.indicatorTextStyle,
      indicatorTextAlignment:
          indicatorTextAlignment ?? self.indicatorTextAlignment,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroSliderThemeExtension &&
        other.runtimeType == runtimeType &&
        other.labelTextStyle == self.labelTextStyle &&
        other.sliderPadding == self.sliderPadding &&
        other.indicatorTextStyle == self.indicatorTextStyle &&
        other.indicatorTextAlignment == self.indicatorTextAlignment;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.labelTextStyle,
      self.sliderPadding,
      self.indicatorTextStyle,
      self.indicatorTextAlignment,
    );
  }

  @override
  String toString() =>
      'MyoroSliderThemeExtension(\n'
      '  labelTextStyle: ${self.labelTextStyle},\n'
      '  sliderPadding: ${self.sliderPadding},\n'
      '  indicatorTextStyle: ${self.indicatorTextStyle},\n'
      '  indicatorTextAlignment: ${self.indicatorTextAlignment},\n'
      ');';
}
