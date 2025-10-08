import 'package:faker/faker.dart' hide Color;
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_button_configuration.g.dart';

/// Configuration model of [MyoroButton].
@immutable
@myoroModel
class MyoroButtonConfiguration with _$MyoroButtonConfigurationMixin {
  /// Default value for [isLoading].
  static const isLoadingDefaultValue = false;

  /// Creates a new instance of [MyoroButtonConfiguration].
  const MyoroButtonConfiguration({
    this.cursor,
    this.tooltipConfiguration,
    this.onTapDown,
    this.onTapUp,
    this.isLoading = isLoadingDefaultValue,
  });

  /// Creates a fake instance of [MyoroButtonConfiguration] for testing purposes.
  MyoroButtonConfiguration.fake()
    : cursor = faker.randomGenerator.boolean() ? myoroFake<MouseCursor>() : null,
      tooltipConfiguration = faker.randomGenerator.boolean() ? MyoroTooltipConfiguration.fake() : null,
      onTapDown = faker.randomGenerator.boolean() ? ((_) {}) : null,
      onTapUp = faker.randomGenerator.boolean() ? ((_) {}) : null,
      isLoading = faker.randomGenerator.boolean();

  /// [MouseCursor] when the [MyoroButton] is hovered over.
  ///
  /// If [MyoroButtonConfiguration.onTapDown] or [MyoroButtonConfiguration.onTapUp] is provided,
  /// [cursor] defaults to [SystemMouseCursors.click]. Other, the default is [SystemMouseCursors.basic].
  final MouseCursor? cursor;

  /// [MyoroTooltip] of the [MyoroButton].
  final MyoroTooltipConfiguration? tooltipConfiguration;

  /// Function executed when the [MyoroButton] is tapped.
  final MyoroButtonOnTapDown? onTapDown;

  /// Function executed when the [MyoroButton] is released being tapped.
  final MyoroButtonOnTapUp? onTapUp;

  /// [bool] to determine if the button is loading.
  final bool isLoading;

  /// Returns if [onTapUp] or [onTapDown] was provided.
  bool get onTapProvided => (onTapUp != null) || (onTapDown != null);
}
