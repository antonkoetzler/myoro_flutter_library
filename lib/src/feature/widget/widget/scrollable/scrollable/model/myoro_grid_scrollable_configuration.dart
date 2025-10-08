import 'package:faker/faker.dart' hide Color;
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_grid_scrollable_configuration.g.dart';

/// Configuration for [MyoroGridScrollable].
@immutable
@myoroModel
class MyoroGridScrollableConfiguration with _$MyoroGridScrollableConfigurationMixin {
  /// Creates a new instance of [MyoroGridScrollableConfiguration].
  const MyoroGridScrollableConfiguration({
    this.scrollDirection = Axis.vertical,
    this.reverse = false,
    this.physics,
    this.controller,
    this.primary,
    this.shrinkWrap = false,
    this.gradientConfiguration,
  });

  /// Creates a fake instance of [MyoroGridScrollableConfiguration] for testing purposes.
  MyoroGridScrollableConfiguration.fake()
    : scrollDirection = faker.randomGenerator.boolean() ? Axis.vertical : Axis.horizontal,
      reverse = faker.randomGenerator.boolean(),
      physics = faker.randomGenerator.boolean() ? myoroFake<ScrollPhysics>() : null,
      controller = faker.randomGenerator.boolean() ? myoroFake<ScrollController>() : null,
      primary = faker.randomGenerator.boolean() ? faker.randomGenerator.boolean() : null,
      shrinkWrap = faker.randomGenerator.boolean(),
      gradientConfiguration = faker.randomGenerator.boolean() ? MyoroScrollableGradientConfiguration.fake() : null;

  /// The axis along which the scroll view scrolls.
  final Axis scrollDirection;

  /// Whether the scroll view scrolls in the reading direction.
  final bool reverse;

  /// How the scroll view should respond to user input.
  final ScrollPhysics? physics;

  /// An object that can be used to control the position to which this scroll
  /// view is scrolled.
  final ScrollController? controller;

  /// Whether this is the primary scroll view associated with the parent.
  final bool? primary;

  /// Whether the extent of the scroll view in the [scrollDirection] should be
  /// determined by the contents being viewed.
  final bool shrinkWrap;

  /// Configuration for gradient overlays.
  final MyoroScrollableGradientConfiguration? gradientConfiguration;
}
