// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_feedback_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroFeedbackConfiguration] once the code is generated.
///
/// ```dart
/// class MyoroFeedbackConfiguration with _$MyoroFeedbackConfigurationMixin {}
/// ```
mixin _$MyoroFeedbackConfigurationMixin {
  MyoroFeedbackConfiguration get self => this as MyoroFeedbackConfiguration;

  MyoroFeedbackConfiguration copyWith({
    MyoroIconConfiguration? iconConfiguration,
    MyoroTextConfiguration? titleConfiguration,
    MyoroTextConfiguration? subtitleConfiguration,
    bool subtitleConfigurationProvided = true,
    MyoroFeedbackActionButtonConfiguration? actionButtonConfiguration,
    bool actionButtonConfigurationProvided = true,
  }) {
    return MyoroFeedbackConfiguration(
      iconConfiguration: iconConfiguration ?? self.iconConfiguration,
      titleConfiguration: titleConfiguration ?? self.titleConfiguration,
      subtitleConfiguration: subtitleConfigurationProvided
          ? (subtitleConfiguration ?? self.subtitleConfiguration)
          : null,
      actionButtonConfiguration: actionButtonConfigurationProvided
          ? (actionButtonConfiguration ?? self.actionButtonConfiguration)
          : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroFeedbackConfiguration &&
        other.runtimeType == runtimeType &&
        other.iconConfiguration == self.iconConfiguration &&
        other.titleConfiguration == self.titleConfiguration &&
        other.subtitleConfiguration == self.subtitleConfiguration &&
        other.actionButtonConfiguration == self.actionButtonConfiguration;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.iconConfiguration,
      self.titleConfiguration,
      self.subtitleConfiguration,
      self.actionButtonConfiguration,
    );
  }

  @override
  String toString() =>
      'MyoroFeedbackConfiguration(\n'
      '  iconConfiguration: ${self.iconConfiguration},\n'
      '  titleConfiguration: ${self.titleConfiguration},\n'
      '  subtitleConfiguration: ${self.subtitleConfiguration},\n'
      '  actionButtonConfiguration: ${self.actionButtonConfiguration},\n'
      ');';
}
