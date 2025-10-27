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

  /// Default value of [tooltipText].
  static const tooltipTextDefaultValue = kMyoroEmptyString;

  /// Default value of [isLoading].
  static const isLoadingDefaultValue = MyoroButton.isLoadingDefaultValue;

  /// Default value of [invert].
  static const invertDefaultValue = MyoroIconTextButton.invertDefaultValue;

  const MyoroFeedbackActionButtonConfiguration({
    this.style = styleDefaultValue,
    this.cursor,
    this.tooltipText = tooltipTextDefaultValue,
    this.onTapDown,
    this.onTapUp,
    this.isLoading = isLoadingDefaultValue,
    this.invert = invertDefaultValue,
    this.iconConfiguration,
    this.textConfiguration,
  });

  /// Style.
  final MyoroIconTextButtonStyle style;

  /// [MyoroButton.cursor]
  final MouseCursor? cursor;

  /// [MyoroButton.tooltipText]
  final String tooltipText;

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
