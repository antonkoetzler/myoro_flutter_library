import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

/// View model of [WidgetShowcaseScreen].
final class WidgetShowcaseScreenViewModel {
  WidgetShowcaseScreenViewModel(this.widgetName, this.widget, this.widgetOptions);

  /// [GlobalKey] of the [Navigator] used to attach view models
  /// of widget showcases to the [widgetOptions] modal.
  final navigatorKey = GlobalKey<NavigatorState>();

  /// Name of the [Widget].
  final String widgetName;

  /// [WidgetShowcase.widget]
  final Widget widget;

  /// [WidgetShowcase.widgetOptions]
  final List<Widget> widgetOptions;
}
