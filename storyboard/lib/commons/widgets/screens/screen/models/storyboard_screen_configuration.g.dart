// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'storyboard_screen_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

extension $StoryboardScreenConfigurationExtension
    on StoryboardScreenConfiguration {
  StoryboardScreenConfiguration copyWith({
    void Function()? onPrevious,
    bool onPreviousProvided = true,
    String? title,
    List<Widget>? extraActionWidgets,
    Widget? body,
  }) {
    return StoryboardScreenConfiguration(
      onPrevious: onPreviousProvided ? (onPrevious ?? this.onPrevious) : null,
      title: title ?? this.title,
      extraActionWidgets: extraActionWidgets ?? this.extraActionWidgets,
      body: body ?? this.body,
    );
  }
}

/// Apply this mixin to [StoryboardScreenConfiguration] once the code is generated.
///
/// ```dart
/// class StoryboardScreenConfiguration with $StoryboardScreenConfigurationMixin {}
/// ```
mixin $StoryboardScreenConfigurationMixin {
  StoryboardScreenConfiguration get self =>
      this as StoryboardScreenConfiguration;

  @override
  bool operator ==(Object other) {
    return other is StoryboardScreenConfiguration &&
        other.runtimeType == runtimeType &&
        other.onPrevious == self.onPrevious &&
        other.title == self.title &&
        other.extraActionWidgets == self.extraActionWidgets &&
        other.body == self.body;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.onPrevious,
      self.title,
      self.extraActionWidgets,
      self.body,
    );
  }

  @override
  String toString() =>
      'StoryboardScreenConfiguration(\n'
      '  onPrevious: ${self.onPrevious},\n'
      '  title: ${self.title},\n'
      '  extraActionWidgets: ${self.extraActionWidgets},\n'
      '  body: ${self.body},\n'
      ');';
}
