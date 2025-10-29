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
  /// Lerp function.
  static MyoroPieGraphStyle lerp(MyoroPieGraphStyle? a, MyoroPieGraphStyle? b, double t) {
    return MyoroPieGraphStyle(
      itemColor: Color.lerp(a?.itemColor, b?.itemColor, t),
      itemRadius: lerpDouble(a?.itemRadius, b?.itemRadius, t),
    );
  }

  /// Default constructor.
  const MyoroPieGraphStyle({this.itemColor, this.itemRadius});

  /// Fake constructor.
  factory MyoroPieGraphStyle.fake() {
    return MyoroPieGraphStyle(itemColor: myoroNullableFake<Color>(), itemRadius: myoroNullableFake<double>());
  }

  /// Default color of an item.
  final Color? itemColor;

  /// Default itemRadius (aka height) of an item.
  final double? itemRadius;
}
