import 'package:flutter/material.dart';
import 'package:storybook/storybook.dart';

/// View model of [WidgetShowcaseScreen].
final class WidgetShowcaseScreenViewModel {
  WidgetShowcaseScreenViewModel(this.configuration);

  /// [GlobalKey] of the [Navigator] used to attach view models
  /// of widget showcases to the [widgetOptions] modal.
  final navigatorKey = GlobalKey<NavigatorState>();

  /// Configuration.
  final WidgetShowcaseScreenConfiguration configuration;
}
