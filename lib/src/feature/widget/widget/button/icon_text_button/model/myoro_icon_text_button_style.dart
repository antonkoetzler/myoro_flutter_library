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

  factory MyoroIconTextButtonStyle.fake() {
    return MyoroIconTextButtonStyle(
      backgroundIdleColor: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      backgroundHoverColor: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      backgroundTapColor: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      contentIdleColor: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      contentHoverColor: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      contentTapColor: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      borderWidth: faker.randomGenerator.boolean() ? faker.randomGenerator.decimal(scale: 20) : null,
      borderRadius: faker.randomGenerator.boolean() ? myoroFake<BorderRadius>() : null,
      borderIdleColor: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      borderHoverColor: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      borderTapColor: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      contentPadding: faker.randomGenerator.boolean() ? myoroFake<EdgeInsets>() : null,
      spacing: faker.randomGenerator.boolean() ? faker.randomGenerator.decimal(scale: 20) : null,
      textStyle: faker.randomGenerator.boolean() ? myoroFake<TextStyle>() : null,
    );
  }

  /// [EdgeInsets] of the button.
  final EdgeInsets? contentPadding;

  /// Spacing between the icon and text.
  final double? spacing;

  /// [TextStyle] of the text.
  final TextStyle? textStyle;
}
