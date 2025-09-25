// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_slider_style.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroSliderStyle] once the code is generated.
///
/// ```dart
/// class MyoroSliderStyle with _$MyoroSliderStyleMixin {}
/// ```
mixin _$MyoroSliderStyleMixin {
  MyoroSliderStyle get self => this as MyoroSliderStyle;

  @override
  bool operator ==(Object other) {
    return other is MyoroSliderStyle &&
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
      'MyoroSliderStyle(\n'
      '  indicatorTextStyle: ${self.indicatorTextStyle},\n'
      '  indicatorTextAlignment: ${self.indicatorTextAlignment},\n'
      ');';
}
