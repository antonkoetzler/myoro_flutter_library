import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ThemeExtension] of [MyoroAccordion].
class MyoroAccordionThemeExtension
    extends ThemeExtension<MyoroAccordionThemeExtension> {
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

  const MyoroAccordionThemeExtension({
    required this.itemTitleButtonBorderRadius,
    required this.itemTitleButtonContentPadding,
    required this.itemTitleButtonSpacing,
    required this.itemTitleButtonTitleTextStyle,
    required this.itemTitleButtonArrowIcon,
    required this.itemTitleButtonArrowIconSize,
    required this.itemTitleButtonArrowIconColor,
  });

  MyoroAccordionThemeExtension.fake()
    : itemTitleButtonBorderRadius = BorderRadius.circular(
        faker.randomGenerator.decimal(scale: 50),
      ),
      itemTitleButtonContentPadding = EdgeInsets.all(
        faker.randomGenerator.decimal(scale: 50),
      ),
      itemTitleButtonSpacing = faker.randomGenerator.decimal(scale: 50),
      itemTitleButtonTitleTextStyle =
          MyoroTypographyDesignSystem.instance.randomTextStyle,

      itemTitleButtonArrowIcon =
          kMyoroTestIcons[faker.randomGenerator.integer(
            kMyoroTestIcons.length,
          )],
      itemTitleButtonArrowIconSize = faker.randomGenerator.decimal(
        scale: 50,
        min: 10,
      ),
      itemTitleButtonArrowIconColor =
          kMyoroTestColors[faker.randomGenerator.integer(
            kMyoroTestColors.length,
          )];

  MyoroAccordionThemeExtension.builder(
    ColorScheme colorScheme,
    TextTheme textTheme,
  ) : itemTitleButtonBorderRadius = BorderRadius.zero,
      itemTitleButtonContentPadding = const EdgeInsets.all(10),
      itemTitleButtonSpacing = 10,
      itemTitleButtonTitleTextStyle = textTheme.titleLarge!,
      itemTitleButtonArrowIcon = Icons.keyboard_arrow_down,
      itemTitleButtonArrowIconSize = 25,
      itemTitleButtonArrowIconColor = colorScheme.onPrimary;

  @override
  MyoroAccordionThemeExtension copyWith({
    BorderRadius? itemTitleButtonBorderRadius,
    EdgeInsets? itemTitleButtonContentPadding,
    double? itemTitleButtonSpacing,
    TextStyle? itemTitleButtonTitleTextStyle,
    IconData? itemTitleButtonArrowIcon,
    double? itemTitleButtonArrowIconSize,
    Color? itemTitleButtonArrowIconColor,
  }) {
    return MyoroAccordionThemeExtension(
      itemTitleButtonBorderRadius:
          itemTitleButtonBorderRadius ?? this.itemTitleButtonBorderRadius,
      itemTitleButtonContentPadding:
          itemTitleButtonContentPadding ?? this.itemTitleButtonContentPadding,
      itemTitleButtonSpacing:
          itemTitleButtonSpacing ?? this.itemTitleButtonSpacing,
      itemTitleButtonTitleTextStyle:
          itemTitleButtonTitleTextStyle ?? this.itemTitleButtonTitleTextStyle,
      itemTitleButtonArrowIcon:
          itemTitleButtonArrowIcon ?? this.itemTitleButtonArrowIcon,
      itemTitleButtonArrowIconSize:
          itemTitleButtonArrowIconSize ?? this.itemTitleButtonArrowIconSize,
      itemTitleButtonArrowIconColor:
          itemTitleButtonArrowIconColor ?? this.itemTitleButtonArrowIconColor,
    );
  }

  @override
  MyoroAccordionThemeExtension lerp(
    covariant ThemeExtension<MyoroAccordionThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroAccordionThemeExtension) return this;
    return copyWith(
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
      itemTitleButtonSpacing: lerpDouble(
        itemTitleButtonSpacing,
        other.itemTitleButtonSpacing,
        t,
      ),
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
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroAccordionThemeExtension &&
        other.runtimeType == runtimeType &&
        other.itemTitleButtonBorderRadius == itemTitleButtonBorderRadius &&
        other.itemTitleButtonContentPadding == itemTitleButtonContentPadding &&
        other.itemTitleButtonSpacing == itemTitleButtonSpacing &&
        other.itemTitleButtonTitleTextStyle == itemTitleButtonTitleTextStyle &&
        other.itemTitleButtonArrowIcon == itemTitleButtonArrowIcon &&
        other.itemTitleButtonArrowIconSize == itemTitleButtonArrowIconSize &&
        other.itemTitleButtonArrowIconColor == itemTitleButtonArrowIconColor;
  }

  @override
  int get hashCode {
    return Object.hash(
      itemTitleButtonBorderRadius,
      itemTitleButtonContentPadding,
      itemTitleButtonSpacing,
      itemTitleButtonTitleTextStyle,
      itemTitleButtonArrowIcon,
      itemTitleButtonArrowIconSize,
      itemTitleButtonArrowIconColor,
    );
  }

  @override
  String toString() =>
      'MyoroAccordionThemeExtension(\n'
      '  itemTitleButtonBorderRadius: $itemTitleButtonBorderRadius,\n'
      '  itemTitleButtonContentPadding: $itemTitleButtonContentPadding,\n'
      '  itemTitleButtonSpacing: $itemTitleButtonSpacing,\n'
      '  itemTitleButtonTitleTextStyle: $itemTitleButtonTitleTextStyle,\n'
      '  itemTitleButtonArrowIcon: $itemTitleButtonArrowIcon,\n'
      '  itemTitleButtonArrowIconSize: $itemTitleButtonArrowIconSize,\n'
      '  itemTitleButtonArrowIconColor: $itemTitleButtonArrowIconColor,\n'
      ');';
}
