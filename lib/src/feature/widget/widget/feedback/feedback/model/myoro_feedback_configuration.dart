import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_feedback_configuration.g.dart';

/// Configuration model of [MyoroFeedback].
@immutable
@myoroModel
class MyoroFeedbackConfiguration with _$MyoroFeedbackConfigurationMixin {
  const MyoroFeedbackConfiguration({
    required this.iconConfiguration,
    required this.titleConfiguration,
    this.subtitleConfiguration,
    this.actionButtonConfiguration,
  });

  // coverage:ignore-start
  MyoroFeedbackConfiguration.fake()
    : iconConfiguration = MyoroIconConfiguration.fake(),
      titleConfiguration = MyoroTextConfiguration.fake(),
      subtitleConfiguration = faker.randomGenerator.boolean() ? MyoroTextConfiguration.fake() : null,
      actionButtonConfiguration = faker.randomGenerator.boolean() ? MyoroIconTextButtonConfiguration.fake() : null;
  // coverage:ignore-end

  /// [IconData] of the [MyoroFeedback].
  final MyoroIconConfiguration iconConfiguration;

  /// Title of the [MyoroFeedback].
  final MyoroTextConfiguration titleConfiguration;

  /// Subtitle of the [MyoroFeedback].
  final MyoroTextConfiguration? subtitleConfiguration;

  /// Action button configuration.
  final MyoroIconTextButtonConfiguration? actionButtonConfiguration;

  MyoroFeedbackConfiguration copyWith({
    MyoroIconConfiguration? iconConfiguration,
    MyoroTextConfiguration? titleConfiguration,
    MyoroTextConfiguration? subtitleConfiguration,
    bool subtitleConfigurationProvided = true,
    MyoroIconTextButtonConfiguration? actionButtonConfiguration,
    bool actionButtonConfigurationProvided = true,
  }) {
    return MyoroFeedbackConfiguration(
      iconConfiguration: iconConfiguration ?? this.iconConfiguration,
      titleConfiguration: titleConfiguration ?? this.titleConfiguration,
      subtitleConfiguration: subtitleConfigurationProvided
          ? (subtitleConfiguration ?? this.subtitleConfiguration)
          : null,
      actionButtonConfiguration: actionButtonConfigurationProvided
          ? (actionButtonConfiguration ?? this.actionButtonConfiguration)
          : null,
    );
  }
}
