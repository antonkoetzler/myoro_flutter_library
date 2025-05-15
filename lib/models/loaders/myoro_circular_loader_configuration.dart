import 'dart:ui';

import 'package:equatable/equatable.dart';
import 'package:faker/faker.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Configuration of [MyoroCircularLoader].
class MyoroCircularLoaderConfiguration extends Equatable {
  /// Color of the [MyoroCircularLoader].
  final Color? color;

  /// Size of the [MyoroCircularLoader].
  final double? size;

  const MyoroCircularLoaderConfiguration({this.color, this.size});

  MyoroCircularLoaderConfiguration.fake()
    : color = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      size =
          faker.randomGenerator.boolean()
              ? faker.randomGenerator.decimal(scale: 100)
              : null;

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

  @override
  List<Object?> get props {
    return [color, size];
  }

  @override
  String toString() =>
      'MyoroCircularLoaderConfiguration(\n'
      '  color: $color,\n'
      '  size: $size,\n'
      ');';
}
