import 'package:faker/faker.dart' hide Color;
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_slider_style.g.dart';

/// Style model of [MyoroSlider].
@immutable
@myoroModel
class MyoroSliderStyle with _$MyoroSliderStyleMixin {
  /// Lerp function.
  static MyoroSliderStyle lerp(MyoroSliderStyle? a, MyoroSliderStyle? b, double t) {
    return MyoroSliderStyle(
      indicatorTextStyle: TextStyle.lerp(a?.indicatorTextStyle, b?.indicatorTextStyle, t),
      indicatorTextAlignment: myoroFallbackLerp(a?.indicatorTextAlignment, b?.indicatorTextAlignment, t),
    );
  }

  /// Default constructor.
  const MyoroSliderStyle({this.indicatorTextStyle, this.indicatorTextAlignment});

  /// Fake constructor.
  factory MyoroSliderStyle.fake() {
    return MyoroSliderStyle(
      indicatorTextStyle: myoroNullableFake<TextStyle>(),
      indicatorTextAlignment: myoroNullableFake<TextAlign>(),
    );
  }

  /// Text style of indicators on the left, right, & bottom of the slider (i.e. [MyoroSlider.footerIndicatorTextBuilder]) .
  final TextStyle? indicatorTextStyle;

  /// [TextAlign] of [_IndicatorText].
  final TextAlign? indicatorTextAlignment;
}
