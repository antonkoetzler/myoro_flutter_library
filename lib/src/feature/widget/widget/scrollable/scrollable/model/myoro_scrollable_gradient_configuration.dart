import 'package:faker/faker.dart' hide Color;
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_scrollable_gradient_configuration.g.dart';

/// Configuration for gradient overlays in scrollable widgets.
@immutable
@myoroModel
class MyoroScrollableGradientConfiguration with _$MyoroScrollableGradientConfigurationMixin {
  /// Creates a new instance of [MyoroScrollableGradientConfiguration].
  const MyoroScrollableGradientConfiguration({this.enabled = true, this.begin, this.end});

  /// Creates a fake instance of [MyoroScrollableGradientConfiguration] for testing purposes.
  MyoroScrollableGradientConfiguration.fake()
    : enabled = faker.randomGenerator.boolean(),
      begin = faker.randomGenerator.boolean() ? myoroFake<Alignment>() : null,
      end = faker.randomGenerator.boolean() ? myoroFake<Alignment>() : null;

  /// Whether gradient overlays are enabled.
  final bool enabled;

  /// The offset at which stop 0.0 of the gradient is placed.
  final Alignment? begin;

  /// The offset at which stop 1.0 of the gradient is placed.
  final Alignment? end;
}
