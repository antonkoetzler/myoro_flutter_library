import 'package:equatable/equatable.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Builder of [MyoroButton]'s background color.
typedef MyoroButtonConfigurationBackgroundColorBuilder =
    Color Function(MyoroTapStatusEnum tapStatusEnum);

/// Builder of the [MyoroButton]'s border.
typedef MyoroButtonConfigurationBorderBuilder =
    BoxBorder Function(MyoroTapStatusEnum tapStatusEnum);

/// Function executed when the [MyoroButton] is tapped.
typedef MyoroButtonConfigurationOnTapDown =
    void Function(TapDownDetails details);

/// Function executed when the [MyoroButton] is released being tapped.
///
/// Will not executed if the tap when held down, then dragged to another location.
/// The tap must be released while still focused on the [MyoroButton].
typedef MyoroButtonConfigurationOnTapUp = void Function(TapUpDetails details);

/// Configuration model of [MyoroButton].
///
/// TODO: Test needs to be rewritten.
class MyoroButtonConfiguration extends Equatable {
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

  const MyoroButtonConfiguration({
    this.tooltipConfiguration,
    this.cursor,
    this.borderRadius,
    this.backgroundColorBuilder,
    this.borderBuilder,
    this.onTapDown,
    this.onTapUp,
  });

  MyoroButtonConfiguration.fake()
    : tooltipConfiguration =
          faker.randomGenerator.boolean()
              ? MyoroTooltipConfiguration.fake()
              : null,
      cursor =
          faker.randomGenerator.boolean()
              ? myoroFake<SystemMouseCursor>()
              : null,
      borderRadius =
          faker.randomGenerator.boolean()
              ? BorderRadius.circular(
                faker.randomGenerator.decimal(scale: 50, min: 1),
              )
              : null,
      backgroundColorBuilder =
          faker.randomGenerator.boolean() ? ((_) => myoroFake<Color>()) : null,
      borderBuilder =
          faker.randomGenerator.boolean()
              ? ((_) => Border.all(
                width: faker.randomGenerator.decimal(scale: 10),
                color: myoroFake<Color>(),
              ))
              : null,
      onTapDown = faker.randomGenerator.boolean() ? ((_) {}) : null,
      onTapUp = faker.randomGenerator.boolean() ? ((_) {}) : null;

  MyoroButtonConfiguration copyWith({
    MyoroTooltipConfiguration? tooltipConfiguration,
    bool tooltipConfigurationProvided = true,
    MouseCursor? cursor,
    bool cursorProvided = true,
    BorderRadius? borderRadius,
    bool borderRadiusProvided = true,
    MyoroButtonConfigurationBackgroundColorBuilder? backgroundColorBuilder,
    bool backgroundColorBuilderProvided = true,
    MyoroButtonConfigurationBorderBuilder? borderBuilder,
    bool borderBuilderProvided = true,
    MyoroButtonConfigurationOnTapDown? onTapDown,
    bool onTapDownProvided = true,
    MyoroButtonConfigurationOnTapUp? onTapUp,
    bool onTapUpProvided = true,
  }) {
    return MyoroButtonConfiguration(
      tooltipConfiguration:
          tooltipConfigurationProvided
              ? (tooltipConfiguration ?? this.tooltipConfiguration)
              : null,
      cursor: cursorProvided ? (cursor ?? this.cursor) : null,
      borderRadius:
          borderRadiusProvided ? (borderRadius ?? this.borderRadius) : null,
      backgroundColorBuilder:
          backgroundColorBuilderProvided
              ? (backgroundColorBuilder ?? this.backgroundColorBuilder)
              : null,
      borderBuilder:
          borderBuilderProvided ? (borderBuilder ?? this.borderBuilder) : null,
      onTapDown: onTapDownProvided ? (onTapDown ?? this.onTapDown) : null,
      onTapUp: onTapUpProvided ? (onTapUp ?? this.onTapUp) : null,
    );
  }

  @override
  List<Object?> get props {
    return [
      tooltipConfiguration,
      cursor,
      borderRadius,
      backgroundColorBuilder,
      borderBuilder,
      onTapDown,
      onTapUp,
    ];
  }

  @override
  String toString() =>
      'MyoroButtonConfiguration(\n'
      '  tooltipConfiguration: $tooltipConfiguration,\n'
      '  cursor: $cursor,\n'
      '  borderRadius: $borderRadius,\n'
      '  backgroundColorBuilder: $backgroundColorBuilder,\n'
      '  borderBuilder: $borderBuilder,\n'
      '  onTapDown: $onTapDown,\n'
      '  onTapUp: $onTapUp,\n'
      ');';

  /// Returns if [onTapUp] or [onTapDown] was provided.
  bool get onTapProvided => (onTapUp != null) || (onTapDown != null);
}
