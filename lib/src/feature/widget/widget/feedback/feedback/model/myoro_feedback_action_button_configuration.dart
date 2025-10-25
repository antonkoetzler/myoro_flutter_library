import 'package:faker/faker.dart' hide Color;
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_feedback_action_button_configuration.g.dart';

/// Configuration model of [MyoroFeedbackConfiguration].
@immutable
@myoroModel
final class MyoroFeedbackActionButtonConfiguration with _$MyoroFeedbackActionButtonConfigurationMixin {
  /// Default value of [style].
  static const styleDefaultValue = MyoroIconTextButton.styleDefaultValue;

  /// Default value of [isLoading].
  static const isLoadingDefaultValue = MyoroButton.isLoadingDefaultValue;

  /// Default value of [invert].
  static const invertDefaultValue = MyoroIconTextButton.invertDefaultValue;

  const MyoroFeedbackActionButtonConfiguration({
    this.style = styleDefaultValue,
    this.cursor,
    this.tooltipConfiguration,
    this.onTapDown,
    this.onTapUp,
    this.isLoading = isLoadingDefaultValue,
    this.invert = invertDefaultValue,
    this.iconConfiguration,
    this.textConfiguration,
  });

  MyoroFeedbackActionButtonConfiguration.fake()
    : style = MyoroIconTextButtonStyle.fake(),
      cursor = myoroFake<MouseCursor>(),
      tooltipConfiguration = faker.randomGenerator.boolean() ? MyoroTooltipConfiguration.fake() : null,
      onTapDown = faker.randomGenerator.boolean() ? ((_) {}) : null,
      onTapUp = faker.randomGenerator.boolean() ? ((_) {}) : null,
      isLoading = faker.randomGenerator.boolean(),
      invert = faker.randomGenerator.boolean(),
      iconConfiguration = MyoroIconConfiguration.fake(),
      textConfiguration = MyoroTextConfiguration.fake();

  /// Style.
  final MyoroIconTextButtonStyle style;

  /// [MyoroButton.cursor]
  final MouseCursor? cursor;

  /// [MyoroButton.tooltipConfiguration]
  final MyoroTooltipConfiguration? tooltipConfiguration;

  /// [MyoroButton.onTapDown]
  final MyoroButtonOnTapDown? onTapDown;

  /// [MyoroButton.onTapUp]
  final MyoroButtonOnTapUp? onTapUp;

  /// [MyoroButton.isLoading]
  final bool isLoading;

  /// Whether or not to invert the icon and text.
  ///
  /// Only effective when both [iconConfiguration] and [textConfiguration] is provided.
  final bool invert;

  /// Icon configuration of the [MyoroIconTextButton].
  final MyoroIconConfiguration? iconConfiguration;

  /// Text configuration of the [MyoroIconTextButton].
  final MyoroTextConfiguration? textConfiguration;
}
