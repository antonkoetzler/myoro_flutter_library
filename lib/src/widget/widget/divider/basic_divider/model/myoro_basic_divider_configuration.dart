import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_basic_divider_configuration.g.dart';

/// Configuration model to store the class members of [MyoroBasicDivider].
@immutable
@myoroModel
class MyoroBasicDividerConfiguration with _$MyoroBasicDividerConfigurationMixin {
  const MyoroBasicDividerConfiguration({required this.direction, this.shortValue, this.padding});

  // coverage:ignore-start
  MyoroBasicDividerConfiguration.fake()
    : direction = myoroFake<Axis>(),
      shortValue = faker.randomGenerator.decimal(scale: 20),
      padding = faker.randomGenerator.boolean() ? myoroFake<EdgeInsets>() : null;
  // coverage:ignore-end

  /// Direction of the divider.
  final Axis direction;

  /// Short value of the divider (i.e. width for vertical, height for horizontal).
  final double? shortValue;

  /// Padding of the divider.
  final EdgeInsets? padding;
}
