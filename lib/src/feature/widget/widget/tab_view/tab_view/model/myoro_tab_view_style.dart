import 'dart:ui';

import 'package:faker/faker.dart' hide Color;
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_tab_view_style.g.dart';

/// Style model of [MyoroTabView].
@immutable
@myoroModel
class MyoroTabViewStyle with _$MyoroTabViewStyleMixin {
  static MyoroTabViewStyle lerp(MyoroTabViewStyle? a, MyoroTabViewStyle? b, double t) {
    return MyoroTabViewStyle(
      tabButtonBorderRadius: BorderRadius.lerp(a?.tabButtonBorderRadius, b?.tabButtonBorderRadius, t),
      tabButtonIconSize: lerpDouble(a?.tabButtonIconSize, b?.tabButtonIconSize, t),
      tabButtonTextStyle: TextStyle.lerp(a?.tabButtonTextStyle, b?.tabButtonTextStyle, t),
    );
  }

  const MyoroTabViewStyle({this.tabButtonBorderRadius, this.tabButtonIconSize, this.tabButtonTextStyle});

  factory MyoroTabViewStyle.fake() {
    return MyoroTabViewStyle(
      tabButtonBorderRadius: faker.randomGenerator.boolean() ? myoroFake<BorderRadius>() : null,
      tabButtonIconSize: faker.randomGenerator.boolean() ? faker.randomGenerator.decimal(scale: 20) : null,
      tabButtonTextStyle: faker.randomGenerator.boolean() ? myoroFake<TextStyle>() : null,
    );
  }

  /// [BorderRadius] of a tab traversal button.
  final BorderRadius? tabButtonBorderRadius;

  /// Icon size of a tab traversal button.
  final double? tabButtonIconSize;

  /// [TextStyle] of a tab traversal button.
  final TextStyle? tabButtonTextStyle;
}
