import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:storyboard/storyboard.dart';

part 'storyboard_screen_configuration.g.dart';

/// Configuration of [StoryboardScreen].
@myoroModel
final class StoryboardScreenConfiguration with _$StoryboardScreenConfigurationMixin {
  static const extraActionWidgetsDefaultValue = <Widget>[];

  const StoryboardScreenConfiguration({
    this.onPrevious,
    required this.title,
    this.extraActionWidgets = extraActionWidgetsDefaultValue,
    required this.body,
  }) : assert(title.length > 0, '[StoryboardScreenConfiguration]: [title] cannot be empty.');

  // coverage:ignore-start
  StoryboardScreenConfiguration.fake()
    : onPrevious = faker.randomGenerator.boolean() ? (() {}) : null,
      title = faker.lorem.word(),
      extraActionWidgets = List.generate(faker.randomGenerator.integer(5), (_) => Text(faker.lorem.word())),
      body = Text(faker.lorem.word());
  // coverage:ignore-end

  /// Callback that builds [_PreviousPageButton].
  final VoidCallback? onPrevious;

  /// Text of [_Title].
  final String title;

  /// Extra [Widget]s rendered next to [_ToggleThemeButton].
  final List<Widget> extraActionWidgets;

  /// [MyoroScreen.body].
  final Widget body;
}
