import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_accordion_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroAccordion].
@immutable
@myoroThemeExtension
class MyoroAccordionThemeExtension extends ThemeExtension<MyoroAccordionThemeExtension>
    with _$MyoroAccordionThemeExtensionMixin {
  /// [Duration] of the animation of [_ItemContent].
  final Duration itemContentAnimationDuration;

  /// Animation [Curve] of the animation of [_ItemContent].
  final Curve itemContentAnimationCurve;

  /// [BorderRadius] of [_ItemTitleButton].
  final BorderRadius itemTitleButtonBorderRadius;

  /// [EdgeInsets] of [_ItemTitleButton].
  final EdgeInsets itemTitleButtonContentPadding;

  /// [Row.spacing] of [_ItemTitleButton].
  final double itemTitleButtonSpacing;

  /// Default [TextStyle] wrapped around the [MyoroAccordionItem.titleBuilder].
  final TextStyle itemTitleButtonTitleTextStyle;

  /// [IconData] of [_ItemTitleButtonArrow].
  final IconData itemTitleButtonArrowIcon;

  /// Size of [_ItemTitleButtonArrow].
  final double itemTitleButtonArrowIconSize;

  /// [Color] of [_ItemTitleButtonArrow].
  final Color itemTitleButtonArrowIconColor;

  /// [BorderRadius] of [_ItemTitleButtonArrow];
  final BorderRadius itemTitleButtonArrowBorderRadius;

  /// [Duration] of the rotation animation of [_ItemTitleButtonArrow].
  final Duration itemTitleButtonArrowAnimationDuration;

  /// [Curve] of the rotation animation of [_ItemTitleButtonArrow].
  final Curve itemTitleButtonArrowAnimationCurve;

  const MyoroAccordionThemeExtension({
    required this.itemContentAnimationDuration,
    required this.itemContentAnimationCurve,
    required this.itemTitleButtonBorderRadius,
    required this.itemTitleButtonContentPadding,
    required this.itemTitleButtonSpacing,
    required this.itemTitleButtonTitleTextStyle,
    required this.itemTitleButtonArrowIcon,
    required this.itemTitleButtonArrowIconSize,
    required this.itemTitleButtonArrowIconColor,
    required this.itemTitleButtonArrowBorderRadius,
    required this.itemTitleButtonArrowAnimationDuration,
    required this.itemTitleButtonArrowAnimationCurve,
  });

  MyoroAccordionThemeExtension.fake()
    : itemContentAnimationDuration = myoroFake<Duration>(),
      itemContentAnimationCurve = myoroFake<Curve>(),
      itemTitleButtonBorderRadius = myoroFake<BorderRadius>(),
      itemTitleButtonContentPadding = myoroFake<EdgeInsets>(),
      itemTitleButtonSpacing = faker.randomGenerator.decimal(scale: 50),
      itemTitleButtonTitleTextStyle = myoroFake<TextStyle>(),
      itemTitleButtonArrowIcon = myoroFake<IconData>(),
      itemTitleButtonArrowIconSize = faker.randomGenerator.decimal(scale: 50, min: 10),
      itemTitleButtonArrowIconColor = myoroFake<Color>(),
      itemTitleButtonArrowBorderRadius = myoroFake<BorderRadius>(),
      itemTitleButtonArrowAnimationDuration = myoroFake<Duration>(),
      itemTitleButtonArrowAnimationCurve = myoroFake<Curve>();

  MyoroAccordionThemeExtension.builder(ColorScheme colorScheme, TextTheme textTheme)
    : itemContentAnimationDuration = const Duration(milliseconds: 200),
      itemContentAnimationCurve = Curves.easeInOut,
      itemTitleButtonBorderRadius = BorderRadius.zero,
      itemTitleButtonContentPadding = const EdgeInsets.all(10),
      itemTitleButtonSpacing = 10,
      itemTitleButtonTitleTextStyle = textTheme.titleLarge!,
      itemTitleButtonArrowIcon = Icons.keyboard_arrow_down,
      itemTitleButtonArrowIconSize = 25,
      itemTitleButtonArrowIconColor = colorScheme.onPrimary,
      itemTitleButtonArrowBorderRadius = BorderRadius.circular(kMyoroBorderRadiusLength),
      itemTitleButtonArrowAnimationDuration = const Duration(milliseconds: 250),
      itemTitleButtonArrowAnimationCurve = Curves.easeInOut;

  @override
  MyoroAccordionThemeExtension lerp(covariant ThemeExtension<MyoroAccordionThemeExtension>? other, double t) {
    if (other is! MyoroAccordionThemeExtension) return this;
    return copyWith(
      itemContentAnimationDuration: myoroLerp(itemContentAnimationDuration, other.itemContentAnimationDuration, t),
      itemContentAnimationCurve: myoroLerp(itemContentAnimationCurve, other.itemContentAnimationCurve, t),
      itemTitleButtonBorderRadius: BorderRadius.lerp(itemTitleButtonBorderRadius, other.itemTitleButtonBorderRadius, t),
      itemTitleButtonContentPadding: EdgeInsets.lerp(
        itemTitleButtonContentPadding,
        other.itemTitleButtonContentPadding,
        t,
      ),
      itemTitleButtonSpacing: lerpDouble(itemTitleButtonSpacing, other.itemTitleButtonSpacing, t),
      itemTitleButtonTitleTextStyle: TextStyle.lerp(
        itemTitleButtonTitleTextStyle,
        other.itemTitleButtonTitleTextStyle,
        t,
      ),
      itemTitleButtonArrowIcon: myoroLerp(itemTitleButtonArrowIcon, other.itemTitleButtonArrowIcon, t),
      itemTitleButtonArrowIconSize: lerpDouble(itemTitleButtonArrowIconSize, other.itemTitleButtonArrowIconSize, t),
      itemTitleButtonArrowIconColor: Color.lerp(itemTitleButtonArrowIconColor, other.itemTitleButtonArrowIconColor, t),
      itemTitleButtonArrowBorderRadius: BorderRadius.lerp(
        itemTitleButtonArrowBorderRadius,
        other.itemTitleButtonArrowBorderRadius,
        t,
      ),
      itemTitleButtonArrowAnimationDuration: myoroLerp(
        itemTitleButtonArrowAnimationDuration,
        other.itemTitleButtonArrowAnimationDuration,
        t,
      ),
      itemTitleButtonArrowAnimationCurve: myoroLerp(
        itemTitleButtonArrowAnimationCurve,
        other.itemTitleButtonArrowAnimationCurve,
        t,
      ),
    );
  }
}
