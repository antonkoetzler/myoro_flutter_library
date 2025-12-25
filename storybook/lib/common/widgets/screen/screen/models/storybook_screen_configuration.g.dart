// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'storybook_screen_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [StorybookScreenConfiguration] once the code is generated.
///
/// ```dart
/// class StorybookScreenConfiguration with _$StorybookScreenConfigurationMixin {}
/// ```
mixin _$StorybookScreenConfigurationMixin {
  StorybookScreenConfiguration get self => this as StorybookScreenConfiguration;

  StorybookScreenConfiguration copyWith({
    VoidCallback? onPrevious,
    bool onPreviousProvided = true,
    String? title,
    List<Widget>? extraActionWidgets,
    Widget? body,
  }) {
    return StorybookScreenConfiguration(
      onPrevious: onPreviousProvided ? (onPrevious ?? self.onPrevious) : null,
      title: title ?? self.title,
      extraActionWidgets: extraActionWidgets ?? self.extraActionWidgets,
      body: body ?? self.body,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is StorybookScreenConfiguration &&
        other.runtimeType == runtimeType &&
        other.onPrevious == self.onPrevious &&
        other.title == self.title &&
        other.extraActionWidgets == self.extraActionWidgets &&
        other.body == self.body;
  }

  @override
  int get hashCode {
    return Object.hash(self.onPrevious, self.title, self.extraActionWidgets, self.body);
  }

  @override
  String toString() =>
      'StorybookScreenConfiguration(\n'
      '  onPrevious: ${self.onPrevious},\n'
      '  title: ${self.title},\n'
      '  extraActionWidgets: ${self.extraActionWidgets},\n'
      '  body: ${self.body},\n'
      ');';
}
