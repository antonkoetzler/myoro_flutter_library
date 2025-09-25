import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';

part 'myoro_accordion_style.g.dart';

/// Style model of accordions.
@immutable
@myoroModel
class MyoroAccordionStyle with _$MyoroAccordionStyleMixin {
  const MyoroAccordionStyle({
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

  /// Backgorund [Color] of an item.
  final Color? itemContentBackgroundColor;

  /// [Duration] of the animation of [_ItemContent].
  final Duration? itemContentAnimationDuration;

  /// Animation [Curve] of the animation of [_ItemContent].
  final Curve? itemContentAnimationCurve;

  /// [EdgeInsets] of [_ItemTitleButton].
  final EdgeInsets? itemTitleButtonContentPadding;

  /// [Row.spacing] of [_ItemTitleButton].
  final double? itemTitleButtonSpacing;

  /// Default [TextStyle] wrapped around the title [Widget].
  final TextStyle? itemTitleButtonTitleTextStyle;

  /// [IconData] of [_ItemTitleButtonArrow].
  final IconData? itemTitleButtonArrowIcon;

  /// [Color] of [_ItemTitleButtonArrow].
  final Color? itemTitleButtonArrowIconColor;

  /// Size of [_ItemTitleButtonArrow].
  final double? itemTitleButtonArrowIconSize;

  /// [Duration] of the rotation animation of [_ItemTitleButtonArrow].
  final Duration? itemTitleButtonArrowAnimationDuration;

  /// [Curve] of the rotation animation of [_ItemTitleButtonArrow].
  final Curve? itemTitleButtonArrowAnimationCurve;
}
