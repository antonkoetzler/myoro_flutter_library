import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

/// View model of [BoxConstraintsWidgetShowcaseOption].
final class BoxConstraintsWidgetShowcaseOptionViewModel {
  BoxConstraintsWidgetShowcaseOptionViewModel(this.configuration) {
    minHeightController.addListener(_updateConstraintsAndNotify);
    maxHeightController.addListener(_updateConstraintsAndNotify);
    minWidthController.addListener(_updateConstraintsAndNotify);
    maxWidthController.addListener(_updateConstraintsAndNotify);
  }

  /// Configuration.
  final BoxConstraintsWidgetShowcaseOptionConfiguration configuration;

  /// [BoxConstraints] field controllers.
  final minHeightController = BoxConstraintsWidgetShowcaseOptionSelectorController(value: 0);
  final maxHeightController = BoxConstraintsWidgetShowcaseOptionSelectorController(value: double.infinity);
  final minWidthController = BoxConstraintsWidgetShowcaseOptionSelectorController(value: 0);
  final maxWidthController = BoxConstraintsWidgetShowcaseOptionSelectorController(value: double.infinity);

  /// Dispose function.
  void dispose() {
    minHeightController.dispose();
    maxHeightController.dispose();
    minWidthController.dispose();
    maxWidthController.dispose();
  }

  /// Calculates and calls [BoxConstraintsWidgetShowcaseOptionConfiguration.onChanged].
  void _updateConstraintsAndNotify() {
    configuration.onChanged(
      BoxConstraints(
        minHeight: minHeightController.enabled ? minHeightController.value : 0,
        maxHeight: maxHeightController.enabled ? maxHeightController.value : double.infinity,
        minWidth: minWidthController.enabled ? minWidthController.value : 0,
        maxWidth: maxWidthController.enabled ? maxWidthController.value : double.infinity,
      ),
    );
  }
}
