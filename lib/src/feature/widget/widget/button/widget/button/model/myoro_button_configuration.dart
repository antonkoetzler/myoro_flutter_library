import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_button_configuration.g.dart';

/// Configuration model of [MyoroButton].
@immutable
@myoroModel
class MyoroButtonConfiguration with _$MyoroButtonConfigurationMixin {
  const MyoroButtonConfiguration({this.tooltipConfiguration, this.onTapDown, this.onTapUp});

  // coverage:ignore-start
  MyoroButtonConfiguration.fake()
    : tooltipConfiguration = faker.randomGenerator.boolean() ? MyoroTooltipConfiguration.fake() : null,
      onTapDown = faker.randomGenerator.boolean() ? ((_) {}) : null,
      onTapUp = faker.randomGenerator.boolean() ? ((_) {}) : null;
  // coverage:ignore-end

  /// [MyoroTooltip] of the [MyoroButton].
  final MyoroTooltipConfiguration? tooltipConfiguration;

  /// Function executed when the [MyoroButton] is tapped.
  final MyoroButtonOnTapDown? onTapDown;

  /// Function executed when the [MyoroButton] is released being tapped.
  final MyoroButtonOnTapUp? onTapUp;

  MyoroButtonConfiguration copyWith({
    MyoroTooltipConfiguration? tooltipConfiguration,
    bool tooltipConfigurationProvided = true,
    MyoroButtonOnTapDown? onTapDown,
    bool onTapDownProvided = true,
    MyoroButtonOnTapUp? onTapUp,
    bool onTapUpProvided = true,
  }) {
    return MyoroButtonConfiguration(
      tooltipConfiguration: tooltipConfigurationProvided ? (tooltipConfiguration ?? this.tooltipConfiguration) : null,
      onTapDown: onTapDownProvided ? (onTapDown ?? this.onTapDown) : null,
      onTapUp: onTapUpProvided ? (onTapUp ?? this.onTapUp) : null,
    );
  }

  /// Returns if [onTapUp] or [onTapDown] was provided.
  bool get onTapProvided => (onTapUp != null) || (onTapDown != null);
}
