import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_basic_divider_configuration.g.dart';

/// Configuration model to store the class members of [MyoroBasicDivider].
@myoroModel
class MyoroBasicDividerConfiguration with $MyoroBasicDividerConfigurationMixin {
  /// Direction of the divider.
  final Axis direction;

  /// Short value of the divider (i.e. width for vertical, height for horizontal).
  final double? shortValue;

  /// Padding of the divider.
  final EdgeInsets? padding;

  const MyoroBasicDividerConfiguration({required this.direction, this.shortValue, this.padding});

  MyoroBasicDividerConfiguration.fake()
    : direction = myoroFake<Axis>(),
      shortValue = faker.randomGenerator.decimal(),
      padding = null;
}
