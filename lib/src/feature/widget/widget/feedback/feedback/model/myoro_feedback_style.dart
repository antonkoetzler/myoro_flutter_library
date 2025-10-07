import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_feedback_style.g.dart';

/// Style model of [MyoroFeedback].
@immutable
@myoroModel
class MyoroFeedbackStyle with _$MyoroFeedbackStyleMixin {
  static MyoroFeedbackStyle lerp(MyoroFeedbackStyle? a, MyoroFeedbackStyle? b, double t) {
    return MyoroFeedbackStyle(
      spacing: lerpDouble(a?.spacing, b?.spacing, t),
      iconSize: lerpDouble(a?.iconSize, b?.iconSize, t),
      titleTextStyle: TextStyle.lerp(a?.titleTextStyle, b?.titleTextStyle, t),
      subtitleTextStyle: TextStyle.lerp(a?.subtitleTextStyle, b?.subtitleTextStyle, t),
    );
  }

  const MyoroFeedbackStyle({this.spacing, this.iconSize, this.titleTextStyle, this.subtitleTextStyle});

  factory MyoroFeedbackStyle.fake() {
    return MyoroFeedbackStyle(
      spacing: faker.randomGenerator.boolean() ? faker.randomGenerator.decimal(scale: 20) : null,
      iconSize: faker.randomGenerator.boolean() ? faker.randomGenerator.decimal(scale: 20) : null,
      titleTextStyle: faker.randomGenerator.boolean() ? myoroFake<TextStyle>() : null,
      subtitleTextStyle: faker.randomGenerator.boolean() ? myoroFake<TextStyle>() : null,
    );
  }

  /// Spacing between the icon/title/subtitle and the action button.
  final double? spacing;

  /// Size of the icon.
  final double? iconSize;

  /// [TextStyle] of the title.
  final TextStyle? titleTextStyle;

  /// [TextStyle] of the subtitle.
  final TextStyle? subtitleTextStyle;
}
