import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_sliders_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroSlider].
@immutable
@myoroThemeExtension
class MyoroSlidersThemeExtension extends ThemeExtension<MyoroSlidersThemeExtension>
    with _$MyoroSlidersThemeExtensionMixin {
  const MyoroSlidersThemeExtension({required this.indicatorTextStyle, required this.indicatorTextAlignment});

  // coverage:ignore-start
  MyoroSlidersThemeExtension.fake()
    : indicatorTextStyle = myoroFake<TextStyle>(),
      indicatorTextAlignment = myoroFake<TextAlign>();
  // coverage:ignore-end

  MyoroSlidersThemeExtension.builder(TextTheme textTheme)
    : indicatorTextStyle = textTheme.bodySmall!,
      indicatorTextAlignment = TextAlign.center;

  /// Text style of indicators on the left, right, & bottom of the slider (i.e. [MyoroSlider.footerIndicatorTextBuilder]) .
  final TextStyle indicatorTextStyle;

  /// [TextAlign] of [_IndicatorText].
  final TextAlign indicatorTextAlignment;

  @override
  MyoroSlidersThemeExtension lerp(covariant ThemeExtension<MyoroSlidersThemeExtension>? other, double t) {
    if (other is! MyoroSlidersThemeExtension) return this;
    return copyWith(
      indicatorTextStyle: TextStyle.lerp(indicatorTextStyle, other.indicatorTextStyle, t),
      indicatorTextAlignment: myoroLerp(indicatorTextAlignment, other.indicatorTextAlignment, t),
    );
  }
}
