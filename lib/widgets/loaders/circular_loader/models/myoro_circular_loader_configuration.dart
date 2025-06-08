import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_circular_loader_configuration.g.dart';

/// Configuration of [MyoroCircularLoader].
@myoroModel
class MyoroCircularLoaderConfiguration with _$MyoroCircularLoaderConfigurationMixin {
  /// Color of the [MyoroCircularLoader].
  final Color? color;

  /// Size of the [MyoroCircularLoader].
  final double? size;

  const MyoroCircularLoaderConfiguration({this.color, this.size});

  MyoroCircularLoaderConfiguration.fake()
    : color = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      size = faker.randomGenerator.boolean() ? faker.randomGenerator.decimal(scale: 100) : null;
}
