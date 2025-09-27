import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_dropdown_style.g.dart';

/// Style model of [MyoroDropdown].
@immutable
@myoroModel
class MyoroDropdownStyle with _$MyoroDropdownStyleMixin {
  static MyoroDropdownStyle lerp(MyoroDropdownStyle? a, MyoroDropdownStyle? b, double t) {
    return MyoroDropdownStyle(
      spacing: lerpDouble(a?.spacing, b?.spacing, t),
      menuBorder: BoxBorder.lerp(a?.menuBorder, b?.menuBorder, t),
      menuBorderRadius: BorderRadius.lerp(a?.menuBorderRadius, b?.menuBorderRadius, t),
    );
  }

  const MyoroDropdownStyle({this.spacing, this.menuBorder, this.menuBorderRadius});

  // coverage:ignore-start
  factory MyoroDropdownStyle.fake() {
    return MyoroDropdownStyle(
      spacing: faker.randomGenerator.boolean() ? faker.randomGenerator.decimal(scale: 50) : null,
      menuBorder: faker.randomGenerator.boolean() ? myoroFake<BoxBorder>() : null,
      menuBorderRadius: faker.randomGenerator.boolean() ? myoroFake<BorderRadius>() : null,
    );
  }
  // coverage:ignore-end

  /// Standard spacing between items.
  final double? spacing;

  /// [Border] of the [MyoroMenu].
  final BoxBorder? menuBorder;

  /// [BorderRadius] of the [MyoroMenu].
  final BorderRadius? menuBorderRadius;
}
