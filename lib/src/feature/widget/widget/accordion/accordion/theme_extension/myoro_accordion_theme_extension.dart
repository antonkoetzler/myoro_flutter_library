
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_accordion_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroAccordion].
@immutable
@myoroThemeExtension
class MyoroAccordionThemeExtension extends ThemeExtension<MyoroAccordionThemeExtension>
    with _$MyoroAccordionThemeExtensionMixin
    implements MyoroAccordionStyle {
  const MyoroAccordionThemeExtension({
    this.itemContentBackgroundColor,
    this.itemContentAnimationDuration,
    this.itemContentAnimationCurve,
    this.itemTitleButtonContentPadding,
    this.itemTitleButtonSpacing,
    this.itemTitleButtonTitleTextStyle,
    this.itemTitleButtonArrowIcon,
    this.itemTitleButtonArrowIconColor,
    this.itemTitleButtonArrowIconSize,
    this.itemTitleButtonArrowAnimationDuration,
    this.itemTitleButtonArrowAnimationCurve,
  });

  // coverage:ignore-start
  MyoroAccordionThemeExtension.fake()
    : itemContentBackgroundColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      itemContentAnimationDuration = faker.randomGenerator.boolean() ? myoroFake<Duration>() : null,
      itemContentAnimationCurve = faker.randomGenerator.boolean() ? myoroFake<Curve>() : null,
      itemTitleButtonContentPadding = faker.randomGenerator.boolean() ? myoroFake<EdgeInsets>() : null,
      itemTitleButtonSpacing = faker.randomGenerator.boolean() ? faker.randomGenerator.decimal(scale: 50) : null,
      itemTitleButtonTitleTextStyle = faker.randomGenerator.boolean() ? myoroFake<TextStyle>() : null,
      itemTitleButtonArrowIcon = faker.randomGenerator.boolean() ? myoroFake<IconData>() : null,
      itemTitleButtonArrowIconColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      itemTitleButtonArrowIconSize = faker.randomGenerator.boolean()
          ? faker.randomGenerator.decimal(scale: 50, min: 10)
          : null,
      itemTitleButtonArrowAnimationDuration = faker.randomGenerator.boolean() ? myoroFake<Duration>() : null,
      itemTitleButtonArrowAnimationCurve = faker.randomGenerator.boolean() ? myoroFake<Curve>() : null;
  // coverage:ignore-end

  MyoroAccordionThemeExtension.builder(bool isDarkMode, ColorScheme colorScheme, TextTheme textTheme)
    : itemContentBackgroundColor = colorScheme.primary,
      itemContentAnimationDuration = const Duration(milliseconds: 200),
      itemContentAnimationCurve = Curves.easeInOut,
      itemTitleButtonContentPadding = const EdgeInsets.all(kMyoroMultiplier * 2.5),
      itemTitleButtonSpacing = kMyoroMultiplier * 2.5,
      itemTitleButtonTitleTextStyle = textTheme.titleLarge,
      itemTitleButtonArrowIcon = Icons.keyboard_arrow_down,
      itemTitleButtonArrowIconColor = colorScheme.onPrimary,
      itemTitleButtonArrowIconSize = kMyoroMultiplier * 6.25,
      itemTitleButtonArrowAnimationDuration = const Duration(milliseconds: 250),
      itemTitleButtonArrowAnimationCurve = Curves.easeInOut;

  @override
  final Color? itemContentBackgroundColor;

  @override
  final Duration? itemContentAnimationDuration;

  @override
  final Curve? itemContentAnimationCurve;

  @override
  final EdgeInsets? itemTitleButtonContentPadding;

  @override
  final double? itemTitleButtonSpacing;

  @override
  final TextStyle? itemTitleButtonTitleTextStyle;

  @override
  final IconData? itemTitleButtonArrowIcon;

  @override
  final Color? itemTitleButtonArrowIconColor;

  @override
  final double? itemTitleButtonArrowIconSize;

  @override
  final Duration? itemTitleButtonArrowAnimationDuration;

  @override
  final Curve? itemTitleButtonArrowAnimationCurve;

  @override
  MyoroAccordionThemeExtension lerp(covariant MyoroAccordionThemeExtension? other, double t) {
    if (other is! MyoroAccordionThemeExtension) return this;
    final style = MyoroAccordionStyle.lerp(this, other, t);
    return MyoroAccordionThemeExtension(
      itemContentBackgroundColor: style.itemContentBackgroundColor,
      itemContentAnimationDuration: style.itemContentAnimationDuration,
      itemContentAnimationCurve: style.itemContentAnimationCurve,
      itemTitleButtonContentPadding: style.itemTitleButtonContentPadding,
      itemTitleButtonSpacing: style.itemTitleButtonSpacing,
      itemTitleButtonTitleTextStyle: style.itemTitleButtonTitleTextStyle,
      itemTitleButtonArrowIcon: style.itemTitleButtonArrowIcon,
      itemTitleButtonArrowIconColor: style.itemTitleButtonArrowIconColor,
      itemTitleButtonArrowIconSize: style.itemTitleButtonArrowIconSize,
      itemTitleButtonArrowAnimationDuration: style.itemTitleButtonArrowAnimationDuration,
      itemTitleButtonArrowAnimationCurve: style.itemTitleButtonArrowAnimationCurve,
    );
  }
}
