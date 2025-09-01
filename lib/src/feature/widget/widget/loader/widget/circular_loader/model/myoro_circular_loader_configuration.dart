import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_circular_loader_configuration.g.dart';

/// Configuration of [MyoroCircularLoader].
@immutable
@myoroModel
class MyoroCircularLoaderConfiguration with _$MyoroCircularLoaderConfigurationMixin {
  const MyoroCircularLoaderConfiguration({this.color, this.size});

  // coverage:ignore-start
  MyoroCircularLoaderConfiguration.fake()
    : color = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      size = faker.randomGenerator.boolean() ? faker.randomGenerator.decimal(scale: 100) : null;
  // coverage:ignore-end

  /// Color of the [MyoroCircularLoader].
  final Color? color;

  /// Size of the [MyoroCircularLoader].
  final double? size;

  MyoroCircularLoaderConfiguration copyWith({
    Color? color,
    bool colorProvided = true,
    double? size,
    bool sizeProvided = true,
  }) {
    return MyoroCircularLoaderConfiguration(
      color: colorProvided ? (color ?? this.color) : null,
      size: sizeProvided ? (size ?? this.size) : null,
    );
  }
}
