import 'dart:ui';

import 'package:faker/faker.dart' hide Color;
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_icon_configuration.g.dart';

/// Generic icon configuration.
@immutable
@myoroModel
class MyoroIconConfiguration with _$MyoroIconConfigurationMixin {
  /// Lerp function.
  static MyoroIconConfiguration? lerp(MyoroIconConfiguration? primary, MyoroIconConfiguration? other, double t) {
    final icon = myoroFallbackLerp(primary?.icon, other?.icon, t);
    // Handle null sizes by treating them as 0 for lerping
    final primarySize = primary?.size ?? 0.0;
    final otherSize = other?.size ?? 0.0;
    final size = lerpDouble(primarySize, otherSize, t);

    return icon != null ? MyoroIconConfiguration(icon: icon, size: size) : null;
  }

  /// Default constructor.
  const MyoroIconConfiguration({required this.icon, this.size});

  /// Fake constructor.
  MyoroIconConfiguration.fake() : icon = myoroFake<IconData>(), size = myoroNullableFake<double>();

  /// [Icon.icon]
  final IconData icon;

  /// [Icon.size]
  final double? size;
}
