import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ThemeExtension] of [MyoroAccordion].
@immutable
class MyoroAccordionThemeExtension extends ThemeExtension<MyoroAccordionThemeExtension> {
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
    : itemContentAnimationDuration = Duration(milliseconds: faker.randomGenerator.integer(200)),
      itemContentAnimationCurve =
          kMyoroTestCurves[faker.randomGenerator.integer(kMyoroTestCurves.length)],
      itemTitleButtonBorderRadius = BorderRadius.circular(faker.randomGenerator.decimal(scale: 50)),
      itemTitleButtonContentPadding = EdgeInsets.all(faker.randomGenerator.decimal(scale: 50)),
      itemTitleButtonSpacing = faker.randomGenerator.decimal(scale: 50),
      itemTitleButtonTitleTextStyle = MyoroTypographyDesignSystem.instance.randomTextStyle,

      itemTitleButtonArrowIcon =
          kMyoroTestIcons[faker.randomGenerator.integer(kMyoroTestIcons.length)],
      itemTitleButtonArrowIconSize = faker.randomGenerator.decimal(scale: 50, min: 10),
      itemTitleButtonArrowIconColor =
          kMyoroTestColors[faker.randomGenerator.integer(kMyoroTestColors.length)],
      itemTitleButtonArrowBorderRadius = BorderRadius.circular(
        faker.randomGenerator.decimal(scale: 50),
      ),
      itemTitleButtonArrowAnimationDuration = Duration(
        milliseconds: faker.randomGenerator.integer(200),
      ),
      itemTitleButtonArrowAnimationCurve =
          kMyoroTestCurves[faker.randomGenerator.integer(kMyoroTestCurves.length)];

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
  MyoroAccordionThemeExtension copyWith({
    Duration? itemContentAnimationDuration,
    Curve? itemContentAnimationCurve,
    BorderRadius? itemTitleButtonBorderRadius,
    EdgeInsets? itemTitleButtonContentPadding,
    double? itemTitleButtonSpacing,
    TextStyle? itemTitleButtonTitleTextStyle,
    IconData? itemTitleButtonArrowIcon,
    double? itemTitleButtonArrowIconSize,
    Color? itemTitleButtonArrowIconColor,
    BorderRadius? itemTitleButtonArrowBorderRadius,
    Duration? itemTitleButtonArrowAnimationDuration,
    Curve? itemTitleButtonArrowAnimationCurve,
  }) {
    return MyoroAccordionThemeExtension(
      itemContentAnimationDuration:
          itemContentAnimationDuration ?? this.itemContentAnimationDuration,
      itemContentAnimationCurve: itemContentAnimationCurve ?? this.itemContentAnimationCurve,
      itemTitleButtonBorderRadius: itemTitleButtonBorderRadius ?? this.itemTitleButtonBorderRadius,
      itemTitleButtonContentPadding:
          itemTitleButtonContentPadding ?? this.itemTitleButtonContentPadding,
      itemTitleButtonSpacing: itemTitleButtonSpacing ?? this.itemTitleButtonSpacing,
      itemTitleButtonTitleTextStyle:
          itemTitleButtonTitleTextStyle ?? this.itemTitleButtonTitleTextStyle,
      itemTitleButtonArrowIcon: itemTitleButtonArrowIcon ?? this.itemTitleButtonArrowIcon,
      itemTitleButtonArrowIconSize:
          itemTitleButtonArrowIconSize ?? this.itemTitleButtonArrowIconSize,
      itemTitleButtonArrowIconColor:
          itemTitleButtonArrowIconColor ?? this.itemTitleButtonArrowIconColor,
      itemTitleButtonArrowBorderRadius:
          itemTitleButtonArrowBorderRadius ?? this.itemTitleButtonArrowBorderRadius,
      itemTitleButtonArrowAnimationDuration:
          itemTitleButtonArrowAnimationDuration ?? this.itemTitleButtonArrowAnimationDuration,
      itemTitleButtonArrowAnimationCurve:
          itemTitleButtonArrowAnimationCurve ?? this.itemTitleButtonArrowAnimationCurve,
    );
  }

  @override
  MyoroAccordionThemeExtension lerp(
    covariant ThemeExtension<MyoroAccordionThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroAccordionThemeExtension) return this;
    return copyWith(
      itemContentAnimationDuration: myoroLerp(
        itemContentAnimationDuration,
        other.itemContentAnimationDuration,
        t,
      ),
      itemContentAnimationCurve: myoroLerp(
        itemContentAnimationCurve,
        other.itemContentAnimationCurve,
        t,
      ),
      itemTitleButtonBorderRadius: BorderRadius.lerp(
        itemTitleButtonBorderRadius,
        other.itemTitleButtonBorderRadius,
        t,
      ),
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
      itemTitleButtonArrowIcon: myoroLerp(
        itemTitleButtonArrowIcon,
        other.itemTitleButtonArrowIcon,
        t,
      ),
      itemTitleButtonArrowIconSize: lerpDouble(
        itemTitleButtonArrowIconSize,
        other.itemTitleButtonArrowIconSize,
        t,
      ),
      itemTitleButtonArrowIconColor: Color.lerp(
        itemTitleButtonArrowIconColor,
        other.itemTitleButtonArrowIconColor,
        t,
      ),
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

  @override
  bool operator ==(Object other) {
    return other is MyoroAccordionThemeExtension &&
        other.runtimeType == runtimeType &&
        other.itemContentAnimationDuration == itemContentAnimationDuration &&
        other.itemContentAnimationCurve == itemContentAnimationCurve &&
        other.itemTitleButtonBorderRadius == itemTitleButtonBorderRadius &&
        other.itemTitleButtonContentPadding == itemTitleButtonContentPadding &&
        other.itemTitleButtonSpacing == itemTitleButtonSpacing &&
        other.itemTitleButtonTitleTextStyle == itemTitleButtonTitleTextStyle &&
        other.itemTitleButtonArrowIcon == itemTitleButtonArrowIcon &&
        other.itemTitleButtonArrowIconSize == itemTitleButtonArrowIconSize &&
        other.itemTitleButtonArrowIconColor == itemTitleButtonArrowIconColor &&
        other.itemTitleButtonArrowBorderRadius == itemTitleButtonArrowBorderRadius &&
        other.itemTitleButtonArrowAnimationDuration == itemTitleButtonArrowAnimationDuration &&
        other.itemTitleButtonArrowAnimationCurve == itemTitleButtonArrowAnimationCurve;
  }

  @override
  int get hashCode {
    return Object.hash(
      itemContentAnimationDuration,
      itemContentAnimationCurve,
      itemTitleButtonBorderRadius,
      itemTitleButtonContentPadding,
      itemTitleButtonSpacing,
      itemTitleButtonTitleTextStyle,
      itemTitleButtonArrowIcon,
      itemTitleButtonArrowIconSize,
      itemTitleButtonArrowIconColor,
      itemTitleButtonArrowBorderRadius,
      itemTitleButtonArrowAnimationDuration,
      itemTitleButtonArrowAnimationCurve,
    );
  }

  @override
  String toString() =>
      'MyoroAccordionThemeExtension(\n'
      '  itemContentAnimationDuration: $itemContentAnimationDuration,\n'
      '  itemContentAnimationCurve: $itemContentAnimationCurve,\n'
      '  itemTitleButtonBorderRadius: $itemTitleButtonBorderRadius,\n'
      '  itemTitleButtonContentPadding: $itemTitleButtonContentPadding,\n'
      '  itemTitleButtonSpacing: $itemTitleButtonSpacing,\n'
      '  itemTitleButtonTitleTextStyle: $itemTitleButtonTitleTextStyle,\n'
      '  itemTitleButtonArrowIcon: $itemTitleButtonArrowIcon,\n'
      '  itemTitleButtonArrowIconSize: $itemTitleButtonArrowIconSize,\n'
      '  itemTitleButtonArrowIconColor: $itemTitleButtonArrowIconColor,\n'
      '  itemTitleButtonArrowBorderRadius: $itemTitleButtonArrowBorderRadius,\n'
      '  itemTitleButtonArrowAnimationDuration: $itemTitleButtonArrowAnimationDuration,\n'
      '  itemTitleButtonArrowAnimationCurve: $itemTitleButtonArrowAnimationCurve,\n'
      ');';
}
