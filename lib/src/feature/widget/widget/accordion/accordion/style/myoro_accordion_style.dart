import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_accordion_style.g.dart';

/// Style model of accordions.
@immutable
@myoroModel
class MyoroAccordionStyle with _$MyoroAccordionStyleMixin {
  /// Lerp function.
  static MyoroAccordionStyle lerp(MyoroAccordionStyle? a, MyoroAccordionStyle? b, double t) {
    return MyoroAccordionStyle(
      itemContentBackgroundColor: Color.lerp(a?.itemContentBackgroundColor, b?.itemContentBackgroundColor, t),
      itemContentAnimationDuration: myoroFallbackLerp(
        a?.itemContentAnimationDuration,
        b?.itemContentAnimationDuration,
        t,
      ),
      itemContentAnimationCurve: myoroFallbackLerp(a?.itemContentAnimationCurve, b?.itemContentAnimationCurve, t),
      itemTitleButtonContentPadding: EdgeInsets.lerp(
        a?.itemTitleButtonContentPadding,
        b?.itemTitleButtonContentPadding,
        t,
      ),
      itemTitleButtonSpacing: lerpDouble(a?.itemTitleButtonSpacing, b?.itemTitleButtonSpacing, t),
      itemTitleButtonTitleTextStyle: TextStyle.lerp(
        a?.itemTitleButtonTitleTextStyle,
        b?.itemTitleButtonTitleTextStyle,
        t,
      ),
      itemTitleButtonArrowIcon: myoroFallbackLerp(a?.itemTitleButtonArrowIcon, b?.itemTitleButtonArrowIcon, t),
      itemTitleButtonArrowIconColor: Color.lerp(a?.itemTitleButtonArrowIconColor, b?.itemTitleButtonArrowIconColor, t),
      itemTitleButtonArrowIconSize: lerpDouble(a?.itemTitleButtonArrowIconSize, b?.itemTitleButtonArrowIconSize, t),
      itemTitleButtonArrowAnimationDuration: myoroFallbackLerp(
        a?.itemTitleButtonArrowAnimationDuration,
        b?.itemTitleButtonArrowAnimationDuration,
        t,
      ),
      itemTitleButtonArrowAnimationCurve: myoroFallbackLerp(
        a?.itemTitleButtonArrowAnimationCurve,
        b?.itemTitleButtonArrowAnimationCurve,
        t,
      ),
    );
  }

  /// Default constructor.
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

  /// Fake constructor.
  factory MyoroAccordionStyle.fake() {
    return MyoroAccordionStyle(
      itemContentBackgroundColor: myoroNullableFake<Color>(),
      itemContentAnimationDuration: myoroNullableFake<Duration>(),
      itemContentAnimationCurve: myoroNullableFake<Curve>(),
      itemTitleButtonContentPadding: myoroNullableFake<EdgeInsets>(),
      itemTitleButtonSpacing: myoroNullableFake<double>(),
      itemTitleButtonTitleTextStyle: myoroNullableFake<TextStyle>(),
      itemTitleButtonArrowIcon: myoroNullableFake<IconData>(),
      itemTitleButtonArrowIconColor: myoroNullableFake<Color>(),
      itemTitleButtonArrowIconSize: myoroNullableFake<double>(),
      itemTitleButtonArrowAnimationDuration: myoroNullableFake<Duration>(),
      itemTitleButtonArrowAnimationCurve: myoroNullableFake<Curve>(),
    );
  }

  /// Backgorund [Color] of an item.
  final Color? itemContentBackgroundColor;

  /// [Duration] of the animation of the item content.
  final Duration? itemContentAnimationDuration;

  /// Animation [Curve] of the animation of the item content.
  final Curve? itemContentAnimationCurve;

  /// [EdgeInsets] of the item title button.
  final EdgeInsets? itemTitleButtonContentPadding;

  /// [Row.spacing] of the item title button.
  final double? itemTitleButtonSpacing;

  /// Default [TextStyle] wrapped around the title [Widget].
  final TextStyle? itemTitleButtonTitleTextStyle;

  /// [IconData] of the item title button arrow.
  final IconData? itemTitleButtonArrowIcon;

  /// [Color] of the item title button arrow.
  final Color? itemTitleButtonArrowIconColor;

  /// Size of the item title button arrow.
  final double? itemTitleButtonArrowIconSize;

  /// [Duration] of the rotation animation of the item title button arrow.
  final Duration? itemTitleButtonArrowAnimationDuration;

  /// [Curve] of the rotation animation of the item title button arrow.
  final Curve? itemTitleButtonArrowAnimationCurve;
}
