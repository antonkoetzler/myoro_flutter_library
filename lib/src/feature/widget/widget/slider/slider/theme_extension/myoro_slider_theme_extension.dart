import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_slider_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroSlider].
@immutable
@myoroThemeExtension
class MyoroSliderThemeExtension extends ThemeExtension<MyoroSliderThemeExtension> with _$MyoroSliderThemeExtensionMixin implements MyoroSliderStyle {
  const MyoroSliderThemeExtension({this.indicatorTextStyle, this.indicatorTextAlignment});

  // coverage:ignore-start
  MyoroSliderThemeExtension.fake()
    : indicatorTextStyle = faker.randomGenerator.boolean() ? myoroFake<TextStyle>() : null,
      indicatorTextAlignment = faker.randomGenerator.boolean() ? myoroFake<TextAlign>() : null;
  // coverage:ignore-end

  MyoroSliderThemeExtension.builder(TextTheme textTheme) : indicatorTextStyle = textTheme.bodySmall!, indicatorTextAlignment = TextAlign.center;

  /// Text style of indicators on the left, right, & bottom of the slider (i.e. [MyoroSlider.footerIndicatorTextBuilder]) .
  @override
  final TextStyle? indicatorTextStyle;

  /// [TextAlign] of [_IndicatorText].
  @override
  final TextAlign? indicatorTextAlignment;

  @override
  MyoroSliderThemeExtension lerp(covariant MyoroSliderThemeExtension? other, double t) {
    if (other is! MyoroSliderThemeExtension) return this;
    final style = MyoroSliderStyle.lerp(this, other, t);
    return MyoroSliderThemeExtension(indicatorTextStyle: style.indicatorTextStyle, indicatorTextAlignment: style.indicatorTextAlignment);
  }
}
