import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_icon_configuration.g.dart';

/// Icon configuration of a [MyoroIconTextButton].
@immutable
@myoroModel
class MyoroIconConfiguration with _$MyoroIconConfigurationMixin {
  static MyoroIconConfiguration? lerp(MyoroIconConfiguration? primary, MyoroIconConfiguration? other, double t) {
    final icon = myoroLerp(primary?.icon, other?.icon, t);
    final size = lerpDouble(primary?.size, other?.size, t);

    return icon != null ? MyoroIconConfiguration(icon: icon, size: size) : null;
  }

  const MyoroIconConfiguration({required this.icon, this.size});

  MyoroIconConfiguration.fake()
    : icon = myoroFake<IconData>(),
      size = faker.randomGenerator.boolean() ? faker.randomGenerator.decimal(scale: 100) : null;

  /// [Icon.icon]
  final IconData icon;

  /// [Icon.size]
  final double? size;
}
