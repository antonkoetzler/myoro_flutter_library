import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_icon_text_button_style.g.dart';

/// Style model of [MyoroIconTextButton].
@immutable
@myoroModel
class MyoroIconTextButtonStyle extends MyoroButtonStyle with _$MyoroIconTextButtonStyleMixin {
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
  });

  // coverage:ignore-start
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
    );
  }
  // coverage:ignore-end

  /// [EdgeInsets] of the button.
  final EdgeInsets? contentPadding;

  /// Spacing between the icon and text.
  final double? spacing;
}
