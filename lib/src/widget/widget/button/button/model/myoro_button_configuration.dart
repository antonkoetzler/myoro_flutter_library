import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_button_configuration.g.dart';

/// Configuration model of [MyoroButton].
@immutable
@myoroModel
class MyoroButtonConfiguration with _$MyoroButtonConfigurationMixin {
  const MyoroButtonConfiguration({
    this.tooltipConfiguration,
    this.cursor,
    this.borderRadius,
    this.backgroundColorBuilder,
    this.borderBuilder,
    this.onTapDown,
    this.onTapUp,
  });

  /// [MyoroTooltip] of the [MyoroButton].
  final MyoroTooltipConfiguration? tooltipConfiguration;

  /// [MouseCursor] when the [MyoroButton] is hovered over.
  ///
  /// If [onTapDown] or [onTapUp] is provided, [cursor] defaults to
  /// [SystemMouseCursor.click]. Other, the default is [SystemMouseCursor.basic].
  final MouseCursor? cursor;

  /// [BorderRadius] of the [MyoroButton].
  final BorderRadius? borderRadius;

  /// Builder of the [MyoroButton]'s background color.
  final MyoroButtonConfigurationBackgroundColorBuilder? backgroundColorBuilder;

  /// Builder of the [MyoroButton]'s border.
  final MyoroButtonConfigurationBorderBuilder? borderBuilder;

  /// Function executed when the [MyoroButton] is tapped.
  final MyoroButtonConfigurationOnTapDown? onTapDown;

  /// Function executed when the [MyoroButton] is released being tapped.
  final MyoroButtonConfigurationOnTapUp? onTapUp;

  MyoroButtonConfiguration.fake()
    : tooltipConfiguration = faker.randomGenerator.boolean() ? MyoroTooltipConfiguration.fake() : null,
      cursor = faker.randomGenerator.boolean() ? myoroFake<MouseCursor>() : null,
      borderRadius =
          faker.randomGenerator.boolean()
              ? BorderRadius.circular(faker.randomGenerator.decimal(scale: 50, min: 1))
              : null,
      backgroundColorBuilder = faker.randomGenerator.boolean() ? ((_) => myoroFake<Color>()) : null,
      borderBuilder =
          faker.randomGenerator.boolean()
              ? ((_) => Border.all(width: faker.randomGenerator.decimal(scale: 10), color: myoroFake<Color>()))
              : null,
      onTapDown = faker.randomGenerator.boolean() ? ((_) {}) : null,
      onTapUp = faker.randomGenerator.boolean() ? ((_) {}) : null;

  /// Returns if [onTapUp] or [onTapDown] was provided.
  bool get onTapProvided => (onTapUp != null) || (onTapDown != null);
}
