import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_tag_style.g.dart';

/// Style model of [MyoroTag].
@immutable
@myoroModel
class MyoroTagStyle with _$MyoroTagStyleMixin {
  /// Lerp function.
  static MyoroTagStyle lerp(MyoroTagStyle? a, MyoroTagStyle? b, double t) {
    return MyoroTagStyle(
      backgroundColor: Color.lerp(a?.backgroundColor, b?.backgroundColor, t),
      contentPadding: EdgeInsets.lerp(a?.contentPadding, b?.contentPadding, t),
      borderRadius: BorderRadius.lerp(a?.borderRadius, b?.borderRadius, t),
      border: Border.lerp(a?.border, b?.border, t),
      spacing: lerpDouble(a?.spacing, b?.spacing, t),
      iconSize: lerpDouble(a?.iconSize, b?.iconSize, t),
      textStyle: MyoroTextStyle.lerp(a?.textStyle, b?.textStyle, t),
    );
  }

  /// Default constructor.
  const MyoroTagStyle({
    this.backgroundColor,
    this.contentPadding,
    this.borderRadius,
    this.border,
    this.spacing,
    this.iconSize,
    this.textStyle,
  });

  /// Fake constructor.
  MyoroTagStyle.fake()
    : backgroundColor = myoroNullableFake<Color>(),
      contentPadding = myoroNullableFake<EdgeInsets>(),
      borderRadius = myoroNullableFake<BorderRadius>(),
      border = myoroNullableFake<Border>(),
      spacing = myoroNullableFake<double>(),
      iconSize = myoroNullableFake<double>(),
      textStyle = myoroNullableFake<MyoroTextStyle>();

  /// Background [Color] of the [MyoroTag].
  final Color? backgroundColor;

  /// [EdgeInsets] of the contents.
  final EdgeInsets? contentPadding;

  /// [BorderRadius] of the [MyoroTag].
  final BorderRadius? borderRadius;

  /// [Border] of the [MyoroTag].
  final Border? border;

  /// Spacing between the icon and text.
  final double? spacing;

  /// Size of the icon.
  final double? iconSize;

  /// [MyoroTextStyle] of the text.
  final MyoroTextStyle? textStyle;
}
