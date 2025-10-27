// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_slider_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroSliderThemeExtension] once the code is generated.
///
/// ```dart
/// class MyoroSliderThemeExtension with _$MyoroSliderThemeExtensionMixin {}
/// ```
mixin _$MyoroSliderThemeExtensionMixin
    on ThemeExtension<MyoroSliderThemeExtension> {
  MyoroSliderThemeExtension get self => this as MyoroSliderThemeExtension;

  @override
  MyoroSliderThemeExtension copyWith({
    TextStyle? indicatorTextStyle,
    bool indicatorTextStyleProvided = true,
    TextAlign? indicatorTextAlignment,
    bool indicatorTextAlignmentProvided = true,
  }) {
    return MyoroSliderThemeExtension(
      indicatorTextStyle: indicatorTextStyleProvided
          ? (indicatorTextStyle ?? self.indicatorTextStyle)
          : null,
      indicatorTextAlignment: indicatorTextAlignmentProvided
          ? (indicatorTextAlignment ?? self.indicatorTextAlignment)
          : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroSliderThemeExtension &&
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
      'MyoroSliderThemeExtension(\n'
      '  indicatorTextStyle: ${self.indicatorTextStyle},\n'
      '  indicatorTextAlignment: ${self.indicatorTextAlignment},\n'
      ');';
}
