import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_accordion_style.g.dart';

/// Style model of accordions.
@immutable
@myoroModel
class MyoroAccordionStyle with _$MyoroAccordionStyleMixin {
  static MyoroAccordionStyle lerp(MyoroAccordionStyle? a, MyoroAccordionStyle? b, double t) {
    return MyoroAccordionStyle(
      itemContentBackgroundColor: Color.lerp(a?.itemContentBackgroundColor, b?.itemContentBackgroundColor, t),
      itemContentAnimationDuration: myoroFallbackLerp(a?.itemContentAnimationDuration, b?.itemContentAnimationDuration, t),
      itemContentAnimationCurve: myoroFallbackLerp(a?.itemContentAnimationCurve, b?.itemContentAnimationCurve, t),
      itemTitleButtonContentPadding: EdgeInsets.lerp(a?.itemTitleButtonContentPadding, b?.itemTitleButtonContentPadding, t),
      itemTitleButtonSpacing: lerpDouble(a?.itemTitleButtonSpacing, b?.itemTitleButtonSpacing, t),
      itemTitleButtonTitleTextStyle: TextStyle.lerp(a?.itemTitleButtonTitleTextStyle, b?.itemTitleButtonTitleTextStyle, t),
      itemTitleButtonArrowIcon: myoroFallbackLerp(a?.itemTitleButtonArrowIcon, b?.itemTitleButtonArrowIcon, t),
      itemTitleButtonArrowIconColor: Color.lerp(a?.itemTitleButtonArrowIconColor, b?.itemTitleButtonArrowIconColor, t),
      itemTitleButtonArrowIconSize: lerpDouble(a?.itemTitleButtonArrowIconSize, b?.itemTitleButtonArrowIconSize, t),
      itemTitleButtonArrowAnimationDuration: myoroFallbackLerp(a?.itemTitleButtonArrowAnimationDuration, b?.itemTitleButtonArrowAnimationDuration, t),
      itemTitleButtonArrowAnimationCurve: myoroFallbackLerp(a?.itemTitleButtonArrowAnimationCurve, b?.itemTitleButtonArrowAnimationCurve, t),
    );
  }

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
