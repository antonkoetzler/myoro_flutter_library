import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_slider_style.g.dart';

/// Style model of [MyoroSlider].
@immutable
@myoroModel
class MyoroSliderStyle with _$MyoroSliderStyleMixin {
  const MyoroSliderStyle({this.indicatorTextStyle, this.indicatorTextAlignment});

  // coverage:ignore-start
  factory MyoroSliderStyle.fake() {
    return MyoroSliderStyle(
      indicatorTextStyle: faker.randomGenerator.boolean() ? myoroFake<TextStyle>() : null,
      indicatorTextAlignment: faker.randomGenerator.boolean() ? myoroFake<TextAlign>() : null,
    );
  }
  // coverage:ignore-end

  /// Text style of indicators on the left, right, & bottom of the slider (i.e. [MyoroSlider.footerIndicatorTextBuilder]) .
  final TextStyle? indicatorTextStyle;

  /// [TextAlign] of [_IndicatorText].
  final TextAlign? indicatorTextAlignment;

  /// Copy with.
  MyoroSliderStyle copyWith({
    TextStyle? indicatorTextStyle,
    bool indicatorTextStyleProvided = true,
    TextAlign? indicatorTextAlignment,
    bool indicatorTextAlignmentProvided = true,
  }) {
    return MyoroSliderStyle(
      indicatorTextStyle: indicatorTextStyleProvided ? (indicatorTextStyle ?? this.indicatorTextStyle) : null,
      indicatorTextAlignment: indicatorTextAlignmentProvided
          ? (indicatorTextAlignment ?? this.indicatorTextAlignment)
          : null,
    );
  }
}
