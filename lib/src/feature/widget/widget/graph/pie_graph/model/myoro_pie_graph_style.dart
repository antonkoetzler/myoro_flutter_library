import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_pie_graph_style.g.dart';

/// Style model of [MyoroPieGraph].
@immutable
@myoroModel
class MyoroPieGraphStyle with _$MyoroPieGraphStyleMixin {
  const MyoroPieGraphStyle({this.itemColor, this.itemRadius});

  // coverage:ignore-start
  factory MyoroPieGraphStyle.fake() {
    return MyoroPieGraphStyle(
      itemColor: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      itemRadius: faker.randomGenerator.boolean() ? faker.randomGenerator.decimal() : null,
    );
  }
  // coverage:ignore-end

  /// Default color of an item.
  final Color? itemColor;

  /// Default itemRadius (aka height) of an item.
  final double? itemRadius;

  /// Copy with.
  MyoroPieGraphStyle copyWith({
    Color? itemColor,
    bool itemColorProvided = true,
    double? itemRadius,
    bool itemRadiusProvided = true,
  }) {
    return MyoroPieGraphStyle(
      itemColor: itemColorProvided ? (itemColor ?? this.itemColor) : null,
      itemRadius: itemRadiusProvided ? (itemRadius ?? this.itemRadius) : null,
    );
  }
}
