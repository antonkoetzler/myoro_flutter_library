import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_feedback_configuration.g.dart';

/// Configuration model of [MyoroFeedback].
@immutable
@myoroModel
final class MyoroFeedbackConfiguration with _$MyoroFeedbackConfigurationMixin {
  const MyoroFeedbackConfiguration({
    required this.iconConfiguration,
    required this.titleConfiguration,
    this.subtitleConfiguration,
    this.actionButtonConfiguration,
  });

  /// [IconData] of the [MyoroFeedback].
  final MyoroIconConfiguration iconConfiguration;

  /// Title of the [MyoroFeedback].
  final MyoroTextConfiguration titleConfiguration;

  /// Subtitle of the [MyoroFeedback].
  final MyoroTextConfiguration? subtitleConfiguration;

  /// Action button configuration.
  final MyoroIconTextButtonConfiguration? actionButtonConfiguration;
}
