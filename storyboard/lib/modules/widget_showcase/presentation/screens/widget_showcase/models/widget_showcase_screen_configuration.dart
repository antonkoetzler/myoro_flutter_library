import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:storyboard/storyboard.dart';

part 'widget_showcase_screen_configuration.g.dart';

/// Configuration model of [StoryboardScreen].
@myoroModel
final class WidgetShowcaseScreenConfiguration with $WidgetShowcaseScreenConfigurationMixin {
  static const widgetOptionsDefaultValue = <Widget>[];

  /// Name of the [Widget].
  final String widgetName;

  /// [WidgetShowcase.widget]
  final Widget widget;

  /// [WidgetShowcase.widgetOptions]
  final List<Widget> widgetOptions;

  const WidgetShowcaseScreenConfiguration({
    required this.widgetName,
    required this.widget,
    this.widgetOptions = widgetOptionsDefaultValue,
  });

  WidgetShowcaseScreenConfiguration.fake()
    : widgetName = faker.lorem.word(),
      widget = Text(faker.lorem.word()),
      widgetOptions = List.generate(faker.randomGenerator.integer(10), (_) => Text(faker.lorem.word()));
}
