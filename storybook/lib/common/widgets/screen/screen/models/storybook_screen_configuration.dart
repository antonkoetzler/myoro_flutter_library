import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:storybook/storybook.dart';

part 'storybook_screen_configuration.g.dart';

/// Configuration of [StorybookScreen].
@myoroModel
final class StorybookScreenConfiguration with _$StorybookScreenConfigurationMixin {
  static const extraActionWidgetsDefaultValue = <Widget>[];

  const StorybookScreenConfiguration({
    this.onPrevious,
    required this.title,
    this.extraActionWidgets = extraActionWidgetsDefaultValue,
    required this.body,
  }) : assert(title.length > 0, '[StorybookScreenConfiguration]: [title] cannot be empty.');

  StorybookScreenConfiguration.fake()
    : onPrevious = faker.randomGenerator.boolean() ? (() {}) : null,
      title = faker.lorem.word(),
      extraActionWidgets = List.generate(faker.randomGenerator.integer(5), (_) => Text(faker.lorem.word())),
      body = Text(faker.lorem.word());

  /// Callback that builds [_PreviousPageButton].
  final VoidCallback? onPrevious;

  /// Text of [_Title].
  final String title;

  /// Extra [Widget]s rendered next to [_ToggleThemeButton].
  final List<Widget> extraActionWidgets;

  /// [MyoroScreen.body].
  final Widget body;
}
