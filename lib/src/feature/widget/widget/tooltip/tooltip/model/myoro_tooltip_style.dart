import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_tooltip_style.g.dart';

/// Style model of [MyoroTooltip].
@immutable
@myoroModel
class MyoroTooltipStyle with _$MyoroTooltipStyleMixin {
  const MyoroTooltipStyle({this.margin});

  // coverage:ignore-start
  factory MyoroTooltipStyle.fake() {
    return MyoroTooltipStyle(margin: faker.randomGenerator.boolean() ? myoroFake<EdgeInsets>() : null);
  }
  // coverage:ignore-end

  /// [Tooltip.margin].
  final EdgeInsets? margin;

  /// Copy with.
}
