import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

/// View model of [BoxConstraintsWidgetShowcaseOption].
final class BoxConstraintsWidgetShowcaseOptionViewModel {
  BoxConstraintsWidgetShowcaseOptionViewModel(this.configuration);

  /// Configuration.
  final BoxConstraintsWidgetShowcaseOptionConfiguration configuration;

  /// [BoxConstraints] field controllers.
  final minHeightController = BoxConstraintsWidgetShowcaseOptionSelectorController(value: 0);
  final maxHeightController = BoxConstraintsWidgetShowcaseOptionSelectorController(value: double.infinity);
  final minWidthController = BoxConstraintsWidgetShowcaseOptionSelectorController(value: 0);
  final maxWidthController = BoxConstraintsWidgetShowcaseOptionSelectorController(value: double.infinity);
}
