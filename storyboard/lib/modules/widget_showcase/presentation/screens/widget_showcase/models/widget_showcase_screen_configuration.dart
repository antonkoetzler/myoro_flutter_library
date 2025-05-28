import 'package:equatable/equatable.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

/// Configuration model of [StoryboardScreen].
final class WidgetShowcaseScreenConfiguration extends Equatable {
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

  WidgetShowcaseScreenConfiguration copyWith({String? widgetName, Widget? widget, List<Widget>? widgetOptions}) {
    return WidgetShowcaseScreenConfiguration(
      widgetName: widgetName ?? this.widgetName,
      widget: widget ?? this.widget,
      widgetOptions: widgetOptions ?? this.widgetOptions,
    );
  }

  @override
  List<Object?> get props {
    return [widgetName, widget, widgetOptions];
  }

  @override
  String toString() =>
      'WidgetShowcaseScreenConfiguration(\n'
      '  widgetName: $widgetName,\n'
      '  widget: $widget,\n'
      '  widgetOptions: $widgetOptions,\n'
      ');';
}
