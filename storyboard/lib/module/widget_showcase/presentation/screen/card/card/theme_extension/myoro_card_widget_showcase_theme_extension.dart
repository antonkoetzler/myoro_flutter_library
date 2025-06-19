import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_card_widget_showcase_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroCardWidgetShowcase].
@immutable
@myoroThemeExtension
final class MyoroCardWidgetShowcaseThemeExtension extends ThemeExtension<MyoroCardWidgetShowcaseThemeExtension>
    with _$MyoroCardWidgetShowcaseThemeExtensionMixin {
  const MyoroCardWidgetShowcaseThemeExtension({required this.textStyle});

  MyoroCardWidgetShowcaseThemeExtension.fake() : textStyle = MyoroTypographyDesignSystem.instance.randomTextStyle;

  MyoroCardWidgetShowcaseThemeExtension.builder(TextTheme textTheme) : textStyle = textTheme.displayLarge!;

  /// [TextStyle] of the text within the [MyoroCard].
  final TextStyle textStyle;

  @override
  MyoroCardWidgetShowcaseThemeExtension lerp(
    covariant ThemeExtension<MyoroCardWidgetShowcaseThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroCardWidgetShowcaseThemeExtension) return this;
    return copyWith(textStyle: TextStyle.lerp(textStyle, other.textStyle, t));
  }
}
