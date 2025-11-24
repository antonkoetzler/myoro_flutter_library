import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_feedback_style.g.dart';

/// Style model of [MyoroFeedback].
@immutable
@myoroModel
class MyoroFeedbackStyle with _$MyoroFeedbackStyleMixin {
  /// Lerp function.
  static MyoroFeedbackStyle lerp(MyoroFeedbackStyle? a, MyoroFeedbackStyle? b, double t) {
    return MyoroFeedbackStyle(
      spacing: lerpDouble(a?.spacing, b?.spacing, t),
      iconStyle: MyoroIconStyle.lerp(a?.iconStyle, b?.iconStyle, t),
      titleTextStyle: MyoroTextStyle.lerp(a?.titleTextStyle, b?.titleTextStyle, t),
      subtitleTextStyle: MyoroTextStyle.lerp(a?.subtitleTextStyle, b?.subtitleTextStyle, t),
    );
  }

  /// Default constructor.
  const MyoroFeedbackStyle({this.spacing, this.iconStyle, this.titleTextStyle, this.subtitleTextStyle});

  /// Fake constructor.
  factory MyoroFeedbackStyle.fake() {
    return MyoroFeedbackStyle(
      spacing: myoroNullableFake<double>(),
      iconStyle: myoroNullableFake<MyoroIconStyle>(),
      titleTextStyle: myoroNullableFake<MyoroTextStyle>(),
      subtitleTextStyle: myoroNullableFake<MyoroTextStyle>(),
    );
  }

  /// Spacing between the icon/title/subtitle and the action button.
  final double? spacing;

  /// Size of the icon.
  final MyoroIconStyle? iconStyle;

  /// [TextStyle] of the title.
  final MyoroTextStyle? titleTextStyle;

  /// [TextStyle] of the subtitle.
  final MyoroTextStyle? subtitleTextStyle;
}
