import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_icon_configuration.g.dart';

/// Generic icon configuration.
@immutable
@myoroModel
class MyoroIconConfiguration with _$MyoroIconConfigurationMixin {
  static MyoroIconConfiguration? lerp(
    MyoroIconConfiguration? primary,
    MyoroIconConfiguration? other,
    double t,
  ) {
    final icon = myoroFallbackLerp(primary?.icon, other?.icon, t);
    // Handle null sizes by treating them as 0 for lerping
    final primarySize = primary?.size ?? 0.0;
    final otherSize = other?.size ?? 0.0;
    final size = lerpDouble(primarySize, otherSize, t);

    return icon != null ? MyoroIconConfiguration(icon: icon, size: size) : null;
  }

  const MyoroIconConfiguration({required this.icon, this.size});

  // coverage:ignore-start
  MyoroIconConfiguration.fake()
    : icon = myoroFake<IconData>(),
      size = faker.randomGenerator.boolean() ? faker.randomGenerator.decimal(scale: 100) : null;
  // coverage:ignore-end

  /// [Icon.icon]
  final IconData icon;

  /// [Icon.size]
  final double? size;
}
