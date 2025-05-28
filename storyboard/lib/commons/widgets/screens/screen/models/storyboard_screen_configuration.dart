import 'package:equatable/equatable.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

/// Configuration of [StoryboardScreen].
final class StoryboardScreenConfiguration extends Equatable {
  static const extraActionWidgetsDefaultValue = <Widget>[];

  /// Callback that builds [_PreviousPageButton].
  final VoidCallback? onPrevious;

  /// Text of [_Title].
  final String title;

  /// Extra [Widget]s rendered next to [_ToggleThemeButton].
  final List<Widget> extraActionWidgets;

  /// [MyoroScreen.body].
  final Widget body;

  const StoryboardScreenConfiguration({
    this.onPrevious,
    required this.title,
    this.extraActionWidgets = extraActionWidgetsDefaultValue,
    required this.body,
  }) : assert(title.length > 0, '[StoryboardScreenConfiguration]: [title] cannot be empty.');

  StoryboardScreenConfiguration.fake()
    : onPrevious = faker.randomGenerator.boolean() ? (() {}) : null,
      title = faker.lorem.word(),
      extraActionWidgets = List.generate(faker.randomGenerator.integer(5), (_) => Text(faker.lorem.word())),
      body = Text(faker.lorem.word());

  StoryboardScreenConfiguration copyWith({
    VoidCallback? onPrevious,
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

  @override
  List<Object?> get props {
    return [onPrevious, title, extraActionWidgets, body];
  }
}
