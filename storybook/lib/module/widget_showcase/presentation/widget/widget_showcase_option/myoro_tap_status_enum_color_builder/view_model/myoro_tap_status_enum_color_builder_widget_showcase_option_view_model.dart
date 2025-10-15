import 'package:flutter/foundation.dart';
import 'package:storybook/storybook.dart';

/// View model of [MyoroTapStatusEnumColorBuilderWidgetShowcaseOption].
final class MyoroTapStatusEnumColorBuilderWidgetShowcaseOptionViewModel {
  MyoroTapStatusEnumColorBuilderWidgetShowcaseOptionViewModel(this._configuration)
    : _enabledController = ValueNotifier(_configuration.enabled);

  /// Configuration.
  final MyoroTapStatusEnumColorBuilderWidgetShowcaseOptionConfiguration _configuration;
  MyoroTapStatusEnumColorBuilderWidgetShowcaseOptionConfiguration get configuration => _configuration;

  /// [ValueNotifier] of the [MyoroCheckbox] controlling if the option is enabled.
  final ValueNotifier<bool> _enabledController;
  ValueNotifier<bool> get enabledController => _enabledController;
  bool get enabled => _enabledController.value;

  /// Dispose function.
  void dispose() {
    _enabledController.dispose();
  }
}
