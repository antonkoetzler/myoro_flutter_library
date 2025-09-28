import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';

part 'myoro_dropdown_style.g.dart';

/// Style model of dropdowns.
@immutable
@myoroModel
class MyoroDropdownStyle with _$MyoroDropdownStyleMixin {
  static MyoroDropdownStyle lerp(MyoroDropdownStyle? a, MyoroDropdownStyle? b, double t) {
    return MyoroDropdownStyle(spacing: lerpDouble(a?.spacing, b?.spacing, t));
  }

  const MyoroDropdownStyle({this.spacing});

  // coverage:ignore-start
  MyoroDropdownStyle.fake() : spacing = faker.randomGenerator.decimal(scale: 50);
  // coverage:ignore-end

  /// Spacing.
  final double? spacing;
}
