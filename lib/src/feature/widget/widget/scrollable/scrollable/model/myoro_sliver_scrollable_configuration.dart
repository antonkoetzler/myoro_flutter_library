import 'package:faker/faker.dart' hide Color;
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_sliver_scrollable_configuration.g.dart';

/// Configuration for [MyoroSliverScrollable].
@immutable
@myoroModel
class MyoroSliverScrollableConfiguration
    with _$MyoroSliverScrollableConfigurationMixin, MyoroScrollableConfigurationMixin {
  /// Creates a new instance of [MyoroSliverScrollableConfiguration].
  const MyoroSliverScrollableConfiguration({
    this.scrollDirection = Axis.vertical,
    this.reverse = false,
    this.physics,
    this.controller,
    this.primary,
    this.shrinkWrap = false,
    this.gradientConfiguration,
  });

  /// Creates a fake instance of [MyoroSliverScrollableConfiguration] for testing purposes.
  MyoroSliverScrollableConfiguration.fake()
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
