import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_button_configuration.g.dart';

/// Configuration model of [MyoroButton].
@immutable
@myoroModel
class MyoroButtonConfiguration with _$MyoroButtonConfigurationMixin {
  const MyoroButtonConfiguration({this.cursor, this.tooltipConfiguration, this.onTapDown, this.onTapUp});

  // coverage:ignore-start
  MyoroButtonConfiguration.fake()
    : cursor = faker.randomGenerator.boolean() ? myoroFake<MouseCursor>() : null,
      tooltipConfiguration = faker.randomGenerator.boolean() ? MyoroTooltipConfiguration.fake() : null,
      onTapDown = faker.randomGenerator.boolean() ? ((_) {}) : null,
      onTapUp = faker.randomGenerator.boolean() ? ((_) {}) : null;
  // coverage:ignore-end

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

  /// Returns if [onTapUp] or [onTapDown] was provided.
  bool get onTapProvided => (onTapUp != null) || (onTapDown != null);
}
