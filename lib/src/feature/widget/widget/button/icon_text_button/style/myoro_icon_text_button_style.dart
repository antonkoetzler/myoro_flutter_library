import 'dart:ui';

import 'package:faker/faker.dart' hide Color;
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_icon_text_button_style.g.dart';

/// Style model of [MyoroIconTextButton].
@immutable
@myoroModel
class MyoroIconTextButtonStyle extends MyoroButtonStyle with _$MyoroIconTextButtonStyleMixin {
  /// Lerp function.
  static MyoroIconTextButtonStyle lerp(MyoroIconTextButtonStyle? a, MyoroIconTextButtonStyle? b, double t) {
    return MyoroIconTextButtonStyle(
      backgroundIdleColor: Color.lerp(a?.backgroundIdleColor, b?.backgroundIdleColor, t),
      backgroundHoverColor: Color.lerp(a?.backgroundHoverColor, b?.backgroundHoverColor, t),
      backgroundTapColor: Color.lerp(a?.backgroundTapColor, b?.backgroundTapColor, t),
      contentIdleColor: Color.lerp(a?.contentIdleColor, b?.contentIdleColor, t),
      contentHoverColor: Color.lerp(a?.contentHoverColor, b?.contentHoverColor, t),
      contentTapColor: Color.lerp(a?.contentTapColor, b?.contentTapColor, t),
      borderWidth: lerpDouble(a?.borderWidth, b?.borderWidth, t),
      borderRadius: BorderRadius.lerp(a?.borderRadius, b?.borderRadius, t),
      borderIdleColor: Color.lerp(a?.borderIdleColor, b?.borderIdleColor, t),
      borderHoverColor: Color.lerp(a?.borderHoverColor, b?.borderHoverColor, t),
      borderTapColor: Color.lerp(a?.borderTapColor, b?.borderTapColor, t),
      contentPadding: EdgeInsets.lerp(a?.contentPadding, b?.contentPadding, t),
      spacing: lerpDouble(a?.spacing, b?.spacing, t),
      textStyle: TextStyle.lerp(a?.textStyle, b?.textStyle, t),
    );
  }

  /// Default constructor.
  const MyoroIconTextButtonStyle({
    super.backgroundIdleColor,
    super.backgroundHoverColor,
    super.backgroundTapColor,
    super.contentIdleColor,
    super.contentHoverColor,
    super.contentTapColor,
    super.borderWidth,
    super.borderRadius,
    super.borderIdleColor,
    super.borderHoverColor,
    super.borderTapColor,
    this.contentPadding,
    this.spacing,
    this.textStyle,
  });

  /// Fake constructor.
  factory MyoroIconTextButtonStyle.fake() {
    return MyoroIconTextButtonStyle(
      backgroundIdleColor: myoroNullableFake<Color>(),
      backgroundHoverColor: myoroNullableFake<Color>(),
      backgroundTapColor: myoroNullableFake<Color>(),
      contentIdleColor: myoroNullableFake<Color>(),
      contentHoverColor: myoroNullableFake<Color>(),
      contentTapColor: myoroNullableFake<Color>(),
      borderWidth: myoroNullableFake<double>(),
      borderRadius: myoroNullableFake<BorderRadius>(),
      borderIdleColor: myoroNullableFake<Color>(),
      borderHoverColor: myoroNullableFake<Color>(),
      borderTapColor: myoroNullableFake<Color>(),
      contentPadding: myoroNullableFake<EdgeInsets>(),
      spacing: myoroNullableFake<double>(),
      textStyle: myoroNullableFake<TextStyle>(),
    );
  }

  /// [EdgeInsets] of the button.
  final EdgeInsets? contentPadding;

  /// Spacing between the icon and text.
  final double? spacing;

  /// [TextStyle] of the text.
  final TextStyle? textStyle;
}
