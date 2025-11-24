import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_slider_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroSlider].
@immutable
@myoroThemeExtension
class MyoroSliderThemeExtension extends ThemeExtension<MyoroSliderThemeExtension>
    with _$MyoroSliderThemeExtensionMixin
    implements MyoroSliderStyle {
  /// Default constructor.
  const MyoroSliderThemeExtension({this.indicatorTextStyle, this.indicatorTextAlignment});

  /// Fake constructor.
  MyoroSliderThemeExtension.fake()
    : indicatorTextStyle = myoroNullableFake<TextStyle>(),
      indicatorTextAlignment = myoroNullableFake<TextAlign>();

  MyoroSliderThemeExtension.builder(TextTheme textTheme)
    : indicatorTextStyle = textTheme.bodySmall!,
      indicatorTextAlignment = TextAlign.center;

  /// Text style of indicators on the left, right, & bottom of the slider (i.e. [MyoroSlider.footerIndicatorTextBuilder]) .
  @override
  final TextStyle? indicatorTextStyle;

  /// [TextAlign] of the indicator text.
  @override
  final TextAlign? indicatorTextAlignment;

  @override
  MyoroSliderThemeExtension lerp(covariant MyoroSliderThemeExtension? other, double t) {
    if (other is! MyoroSliderThemeExtension) return this;
    final style = MyoroSliderStyle.lerp(this, other, t);
    return MyoroSliderThemeExtension(
      indicatorTextStyle: style.indicatorTextStyle,
      indicatorTextAlignment: style.indicatorTextAlignment,
    );
  }
}
