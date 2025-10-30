import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_card_style.g.dart';

/// Style model of [MyoroCard].
@immutable
@myoroModel
class MyoroCardStyle with _$MyoroCardStyleMixin {
  /// Lerp function.
  static MyoroCardStyle lerp(MyoroCardStyle? a, MyoroCardStyle? b, double t) {
    return MyoroCardStyle(
      backgroundColor: Color.lerp(a?.backgroundColor, b?.backgroundColor, t),
      border: Border.lerp(a?.border, b?.border, t),
      borderRadius: BorderRadius.lerp(a?.borderRadius, b?.borderRadius, t),
      padding: EdgeInsets.lerp(a?.padding, b?.padding, t),
      titleCardSpacing: lerpDouble(a?.titleCardSpacing, b?.titleCardSpacing, t),
      titleTextStyle: TextStyle.lerp(a?.titleTextStyle, b?.titleTextStyle, t),
      constraints: BoxConstraints.lerp(a?.constraints, b?.constraints, t),
    );
  }

  /// Default constructor.
  const MyoroCardStyle({
    this.backgroundColor,
    this.border,
    this.borderRadius,
    this.padding,
    this.titleCardSpacing,
    this.titleTextStyle,
    this.constraints,
  });

  /// Fake constructor.
  MyoroCardStyle.fake()
    : backgroundColor = myoroNullableFake<Color>(),
      border = myoroNullableFake<Border>(),
      borderRadius = myoroNullableFake<BorderRadius>(),
      padding = myoroNullableFake<EdgeInsets>(),
      titleCardSpacing = myoroNullableFake<double>(),
      titleTextStyle = myoroNullableFake<TextStyle>(),
      constraints = myoroNullableFake<BoxConstraints>();

  /// Background color of the card.
  final Color? backgroundColor;

  /// Border of the card.
  final Border? border;

  /// Border radius of the card.
  final BorderRadius? borderRadius;

  /// Padding of [MyoroCard.child].
  final EdgeInsets? padding;

  /// Spacing in between [_Title] & [_Card].
  final double? titleCardSpacing;

  /// Text style of [MyoroCard.title].
  final TextStyle? titleTextStyle;

  /// [BoxConstraints]
  final BoxConstraints? constraints;
}
