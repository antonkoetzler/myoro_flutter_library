import 'dart:ui';

import 'package:faker/faker.dart' hide Color;
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_indexed_stack_style.g.dart';

/// Style model of [MyoroIndexedStack].
@immutable
@myoroModel
class MyoroIndexedStackStyle with _$MyoroIndexedStackStyleMixin {
  /// Lerp between two [MyoroIndexedStackStyle]s.
  static MyoroIndexedStackStyle lerp(MyoroIndexedStackStyle? a, MyoroIndexedStackStyle? b, double t) {
    return MyoroIndexedStackStyle(
      indexedStackIndicatorSpacing: lerpDouble(a?.indexedStackIndicatorSpacing, b?.indexedStackIndicatorSpacing, t),
      indicatorSpacing: lerpDouble(a?.indicatorSpacing, b?.indicatorSpacing, t),
      indicatorItemHeight: lerpDouble(a?.indicatorItemHeight, b?.indicatorItemHeight, t),
      indicatorItemBorderRadius: BorderRadius.lerp(a?.indicatorItemBorderRadius, b?.indicatorItemBorderRadius, t),
      indicatorItemSelectedColor: Color.lerp(a?.indicatorItemSelectedColor, b?.indicatorItemSelectedColor, t),
      indicatorItemUnselectedColor: Color.lerp(a?.indicatorItemUnselectedColor, b?.indicatorItemUnselectedColor, t),
    );
  }

  /// Default constructor.
  const MyoroIndexedStackStyle({
    this.indexedStackIndicatorSpacing,
    this.indicatorSpacing,
    this.indicatorItemHeight,
    this.indicatorItemBorderRadius,
    this.indicatorItemSelectedColor,
    this.indicatorItemUnselectedColor,
  });

  /// Fake constructor.
  MyoroIndexedStackStyle.fake()
    : indexedStackIndicatorSpacing = faker.randomGenerator.decimal(scale: 20),
      indicatorSpacing = faker.randomGenerator.decimal(scale: 20),
      indicatorItemHeight = faker.randomGenerator.decimal(scale: 20),
      indicatorItemBorderRadius = myoroNullableFake<BorderRadius>(),
      indicatorItemSelectedColor = myoroNullableFake<Color>(),
      indicatorItemUnselectedColor = myoroNullableFake<Color>();

  /// Spacing between the indicator and the indexed stack.
  final double? indexedStackIndicatorSpacing;

  /// Spacing between the indicator items.
  final double? indicatorSpacing;

  /// Height of the indicator item.
  final double? indicatorItemHeight;

  /// Border radius of the indicator item.
  final BorderRadius? indicatorItemBorderRadius;

  /// Color of the indicator item when selected.
  final Color? indicatorItemSelectedColor;

  /// Color of the indicator item when unselected.
  final Color? indicatorItemUnselectedColor;
}
