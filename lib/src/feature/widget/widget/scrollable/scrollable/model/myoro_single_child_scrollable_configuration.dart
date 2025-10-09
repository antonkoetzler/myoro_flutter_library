import 'package:faker/faker.dart' hide Color;
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_single_child_scrollable_configuration.g.dart';

/// Configuration for [MyoroSingleChildScrollable].
@immutable
@myoroModel
class MyoroSingleChildScrollableConfiguration
    with _$MyoroSingleChildScrollableConfigurationMixin, MyoroScrollableConfigurationMixin {
  /// Creates a new instance of [MyoroSingleChildScrollableConfiguration].
  const MyoroSingleChildScrollableConfiguration({
    this.scrollDirection = Axis.vertical,
    this.reverse = false,
    this.physics,
    this.controller,
    this.primary,
    this.shrinkWrap = false,
    this.gradientConfiguration,
  });

  /// Creates a fake instance of [MyoroSingleChildScrollableConfiguration] for testing purposes.
  MyoroSingleChildScrollableConfiguration.fake()
    : scrollDirection = faker.randomGenerator.boolean() ? Axis.vertical : Axis.horizontal,
      reverse = faker.randomGenerator.boolean(),
      physics = faker.randomGenerator.boolean() ? myoroFake<ScrollPhysics>() : null,
      controller = faker.randomGenerator.boolean() ? myoroFake<ScrollController>() : null,
      primary = faker.randomGenerator.boolean() ? faker.randomGenerator.boolean() : null,
      shrinkWrap = faker.randomGenerator.boolean(),
      gradientConfiguration = faker.randomGenerator.boolean() ? MyoroScrollableGradientConfiguration.fake() : null;

  @override
  final Axis scrollDirection;

  @override
  final bool reverse;

  @override
  final ScrollPhysics? physics;

  @override
  final ScrollController? controller;

  @override
  final bool? primary;

  @override
  final bool shrinkWrap;

  @override
  final MyoroScrollableGradientConfiguration? gradientConfiguration;
}
