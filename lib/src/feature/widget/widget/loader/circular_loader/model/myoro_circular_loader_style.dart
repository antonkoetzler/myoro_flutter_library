import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_circular_loader_style.g.dart';

/// Style model of [MyoroCircularLoader].
@immutable
@myoroModel
class MyoroCircularLoaderStyle with _$MyoroCircularLoaderStyleMixin {
  const MyoroCircularLoaderStyle({this.color, this.size});

  // coverage:ignore-start
  factory MyoroCircularLoaderStyle.fake() {
    return MyoroCircularLoaderStyle(
      color: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      size: faker.randomGenerator.boolean() ? faker.randomGenerator.decimal() : null,
    );
  }
  // coverage:ignore-end

  /// Color of the [MyoroCircularLoader].
  final Color? color;

  /// Default size of the [MyoroCircularLoader].
  final double? size;

  /// Copy with.
  MyoroCircularLoaderStyle copyWith({Color? color, bool colorProvided = true, double? size, bool sizeProvided = true}) {
    return MyoroCircularLoaderStyle(
      color: colorProvided ? (color ?? this.color) : null,
      size: sizeProvided ? (size ?? this.size) : null,
    );
  }
}
