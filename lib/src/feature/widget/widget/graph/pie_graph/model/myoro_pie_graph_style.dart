import 'dart:ui';

import 'package:faker/faker.dart' hide Color;
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_pie_graph_style.g.dart';

/// Style model of [MyoroPieGraph].
@immutable
@myoroModel
class MyoroPieGraphStyle with _$MyoroPieGraphStyleMixin {
  static MyoroPieGraphStyle lerp(MyoroPieGraphStyle? a, MyoroPieGraphStyle? b, double t) {
    return MyoroPieGraphStyle(
      itemColor: Color.lerp(a?.itemColor, b?.itemColor, t),
      itemRadius: lerpDouble(a?.itemRadius, b?.itemRadius, t),
    );
  }

  const MyoroPieGraphStyle({this.itemColor, this.itemRadius});

  factory MyoroPieGraphStyle.fake() {
    return MyoroPieGraphStyle(
      itemColor: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      itemRadius: faker.randomGenerator.boolean() ? faker.randomGenerator.decimal() : null,
    );
  }

  /// Default color of an item.
  final Color? itemColor;

  /// Default itemRadius (aka height) of an item.
  final double? itemRadius;

  /// Copy with.
}
