import 'dart:ui';

import 'package:faker/faker.dart' hide Color;
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_scrollable_style.g.dart';

/// Style model of [MyoroScrollable].
@immutable
@myoroModel
class MyoroScrollableStyle with _$MyoroScrollableStyleMixin {
  static MyoroScrollableStyle lerp(MyoroScrollableStyle? a, MyoroScrollableStyle? b, double t) {
    return MyoroScrollableStyle(
      backgroundColor: Color.lerp(a?.backgroundColor, b?.backgroundColor, t),
      gradientTopColor: Color.lerp(a?.gradientTopColor, b?.gradientTopColor, t),
      gradientBottomColor: Color.lerp(a?.gradientBottomColor, b?.gradientBottomColor, t),
      gradientLeftColor: Color.lerp(a?.gradientLeftColor, b?.gradientLeftColor, t),
      gradientRightColor: Color.lerp(a?.gradientRightColor, b?.gradientRightColor, t),
      gradientSize: lerpDouble(a?.gradientSize, b?.gradientSize, t),
      padding: EdgeInsets.lerp(a?.padding, b?.padding, t),
      margin: EdgeInsets.lerp(a?.margin, b?.margin, t),
      borderRadius: BorderRadius.lerp(a?.borderRadius, b?.borderRadius, t),
      border: Border.lerp(a?.border, b?.border, t),
      boxShadow: a?.boxShadow != null && b?.boxShadow != null
          ? List.generate(
              a!.boxShadow!.length,
              (index) => BoxShadow.lerp(a.boxShadow![index], b!.boxShadow![index], t)!,
            )
          : null,
    );
  }

  const MyoroScrollableStyle({
    this.backgroundColor,
    this.gradientTopColor,
    this.gradientBottomColor,
    this.gradientLeftColor,
    this.gradientRightColor,
    this.gradientSize,
    this.padding,
    this.margin,
    this.borderRadius,
    this.border,
    this.boxShadow,
  });

  MyoroScrollableStyle.fake()
    : backgroundColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      gradientTopColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      gradientBottomColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      gradientLeftColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      gradientRightColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      gradientSize = faker.randomGenerator.boolean() ? faker.randomGenerator.decimal(scale: 50) : null,
      padding = faker.randomGenerator.boolean() ? myoroFake<EdgeInsets>() : null,
      margin = faker.randomGenerator.boolean() ? myoroFake<EdgeInsets>() : null,
      borderRadius = faker.randomGenerator.boolean() ? myoroFake<BorderRadius>() : null,
      border = faker.randomGenerator.boolean() ? myoroFake<Border>() : null,
      boxShadow = faker.randomGenerator.boolean() ? [myoroFake<BoxShadow>()] : null;

  /// Background color of the scrollable area.
  final Color? backgroundColor;

  /// Color for the top gradient overlay (when scrolling vertically).
  final Color? gradientTopColor;

  /// Color for the bottom gradient overlay (when scrolling vertically).
  final Color? gradientBottomColor;

  /// Color for the left gradient overlay (when scrolling horizontally).
  final Color? gradientLeftColor;

  /// Color for the right gradient overlay (when scrolling horizontally).
  final Color? gradientRightColor;

  /// Size of the gradient overlays in logical pixels.
  final double? gradientSize;

  /// Padding around the scrollable content.
  final EdgeInsets? padding;

  /// Margin around the scrollable widget.
  final EdgeInsets? margin;

  /// Border radius of the scrollable area.
  final BorderRadius? borderRadius;

  /// Border around the scrollable area.
  final Border? border;

  /// Box shadow for the scrollable area.
  final List<BoxShadow>? boxShadow;
}
