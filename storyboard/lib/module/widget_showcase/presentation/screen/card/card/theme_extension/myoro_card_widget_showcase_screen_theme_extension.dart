import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_card_widget_showcase_screen_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroCardWidgetShowcaseScreen].
@immutable
@myoroThemeExtension
final class MyoroCardWidgetShowcaseScreenThemeExtension
    extends ThemeExtension<MyoroCardWidgetShowcaseScreenThemeExtension>
    with _$MyoroCardWidgetShowcaseScreenThemeExtensionMixin {
  const MyoroCardWidgetShowcaseScreenThemeExtension({required this.textStyle});

  MyoroCardWidgetShowcaseScreenThemeExtension.fake() : textStyle = MyoroTypographyDesignSystem.instance.randomTextStyle;

  MyoroCardWidgetShowcaseScreenThemeExtension.builder(TextTheme textTheme) : textStyle = textTheme.displayLarge!;

  /// [TextStyle] of the text within the [MyoroCard].
  final TextStyle textStyle;

  @override
  MyoroCardWidgetShowcaseScreenThemeExtension lerp(
    covariant ThemeExtension<MyoroCardWidgetShowcaseScreenThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroCardWidgetShowcaseScreenThemeExtension) return this;
    return copyWith(textStyle: TextStyle.lerp(textStyle, other.textStyle, t));
  }
}
