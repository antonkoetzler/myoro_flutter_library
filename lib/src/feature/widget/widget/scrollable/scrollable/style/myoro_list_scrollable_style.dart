import 'dart:ui';

import 'package:faker/faker.dart' hide Color;
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_list_scrollable_style.g.dart';

/// Style of [MyoroListScrollable].
@myoroModel
class MyoroListScrollableStyle extends MyoroScrollableStyle with _$MyoroListScrollableStyleMixin {
  /// Lerp function.
  static MyoroListScrollableStyle lerp(MyoroListScrollableStyle? a, MyoroListScrollableStyle? b, double t) {
    return MyoroListScrollableStyle(
      padding: EdgeInsets.lerp(a?.padding, b?.padding, t),
      gradientSize: lerpDouble(a?.gradientSize, b?.gradientSize, t),
      gradientColor: Color.lerp(a?.gradientColor, b?.gradientColor, t),
      spacing: lerpDouble(a?.spacing, b?.spacing, t),
      emptyFeedbackStyle: MyoroFeedbackStyle.lerp(a?.emptyFeedbackStyle, b?.emptyFeedbackStyle, t),
    );
  }

  /// Default constructor.
  const MyoroListScrollableStyle({
    super.padding,
    super.gradientSize,
    super.gradientColor,
    this.spacing,
    this.emptyFeedbackStyle,
  });

  /// Fake constructor.
  factory MyoroListScrollableStyle.fake() {
    return MyoroListScrollableStyle(
      padding: myoroFake<EdgeInsets>(),
      gradientSize: faker.randomGenerator.decimal(scale: 20),
      gradientColor: myoroFake<Color>(),
      spacing: faker.randomGenerator.decimal(scale: 20),
      emptyFeedbackStyle: MyoroFeedbackStyle.fake(),
    );
  }

  /// Spacing between the items.
  final double? spacing;

  /// Style of the empty feedback.
  final MyoroFeedbackStyle? emptyFeedbackStyle;
}
