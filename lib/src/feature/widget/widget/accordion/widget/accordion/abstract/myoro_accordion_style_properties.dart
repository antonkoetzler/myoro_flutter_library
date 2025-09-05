import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Style properties of [MyoroAccordion].
abstract class MyoroAccordionStyleProperties {
  const MyoroAccordionStyleProperties({
    this.thumbVisibility,
    this.itemContentBackgroundColor,
    this.itemContentAnimationDuration,
    this.itemContentAnimationCurve,
    this.itemTitleButtonBorderRadius,
    this.itemTitleButtonContentPadding,
    this.itemTitleButtonSpacing,
    this.itemTitleButtonTitleTextStyle,
    this.itemTitleButtonArrowBackgroundColor,
    this.itemTitleButtonArrowIcon,
    this.itemTitleButtonArrowIconSize,
    this.itemTitleButtonArrowIconColor,
    this.itemTitleButtonArrowBorderRadius,
    this.itemTitleButtonArrowAnimationDuration,
    this.itemTitleButtonArrowAnimationCurve,
  });

  /// [Scrollbar.thumbVisibility] of the scrollable.
  final bool? thumbVisibility;

  /// Background color of of an item.
  final Color? itemContentBackgroundColor;

  /// [Duration] of the animation of [_ItemContent].
  final Duration? itemContentAnimationDuration;

  /// Animation [Curve] of the animation of [_ItemContent].
  final Curve? itemContentAnimationCurve;

  /// [BorderRadius] of [_ItemTitleButton].
  final BorderRadius? itemTitleButtonBorderRadius;

  /// [EdgeInsets] of [_ItemTitleButton].
  final EdgeInsets? itemTitleButtonContentPadding;

  /// [Row.spacing] of [_ItemTitleButton].
  final double? itemTitleButtonSpacing;

  /// Default [TextStyle] wrapped around the [MyoroAccordionItem.titleBuilder].
  final TextStyle? itemTitleButtonTitleTextStyle;

  /// Background [Color] of an item title button's arrow when
  /// it's being hovered over when said item is selected.
  final Color? itemTitleButtonArrowBackgroundColor;

  /// [IconData] of [_ItemTitleButtonArrow].
  final IconData? itemTitleButtonArrowIcon;

  /// Size of [_ItemTitleButtonArrow].
  final double? itemTitleButtonArrowIconSize;

  /// [Color] of [_ItemTitleButtonArrow].
  final Color? itemTitleButtonArrowIconColor;

  /// [BorderRadius] of [_ItemTitleButtonArrow];
  final BorderRadius? itemTitleButtonArrowBorderRadius;

  /// [Duration] of the rotation animation of [_ItemTitleButtonArrow].
  final Duration? itemTitleButtonArrowAnimationDuration;

  /// [Curve] of the rotation animation of [_ItemTitleButtonArrow].
  final Curve? itemTitleButtonArrowAnimationCurve;
}
