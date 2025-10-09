import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

part 'widget_showcase_screen_configuration.g.dart';

/// Configuration model of [StoryboardScreen].
@immutable
@myoroModel
final class WidgetShowcaseScreenConfiguration with _$WidgetShowcaseScreenConfigurationMixin {
  static const configurationOptionsDefaultValue = <Widget>[];
  static const stylingOptionsDefaultValue = <Widget>[];

  /// Name of the [Widget].
  final String widgetName;

  /// [WidgetShowcase.widget]
  final Widget widget;

  /// Configuration-related options (behavior, data, callbacks)
  final List<Widget> configurationOptions;

  /// Styling-related options (appearance, colors, spacing)
  final List<Widget> stylingOptions;

  /// [EdgeInsets] of the [Widget].
  final EdgeInsets? padding;

  const WidgetShowcaseScreenConfiguration({
    required this.widgetName,
    required this.widget,
    this.configurationOptions = configurationOptionsDefaultValue,
    this.stylingOptions = stylingOptionsDefaultValue,
    this.padding,
  });

  WidgetShowcaseScreenConfiguration.fake()
    : widgetName = faker.lorem.word(),
      widget = Text(faker.lorem.word()),
      configurationOptions = List.generate(faker.randomGenerator.integer(5), (_) => Text(faker.lorem.word())),
      stylingOptions = List.generate(faker.randomGenerator.integer(5), (_) => Text(faker.lorem.word())),
      padding = faker.randomGenerator.boolean() ? myoroFake<EdgeInsets>() : null;

  /// Legacy support - combines both option lists for backwards compatibility
  List<Widget> get widgetOptions => [...configurationOptions, ...stylingOptions];
}
