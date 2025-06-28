import 'package:flutter/foundation.dart';
import 'package:storyboard/storyboard.dart';

/// View model of [MyoroTapStatusEnumColorBuilderWidgetShowcaseOption].
final class MyoroTapStatusEnumColorBuilderWidgetShowcaseOptionViewModel {
  const MyoroTapStatusEnumColorBuilderWidgetShowcaseOptionViewModel(this.configuration);

  /// [ValueNotifier] of the [MyoroCheckbox] controlling if the option is enabled.
  late final ValueNotifier<bool> _enabledController;
  ValueNotifier<bool> get enabledController => _enabledController;
  bool get enabled => _enabledController.value;

  /// Dispose function.
  void dispose() {
    _enabledController.dispose();
  }
}
