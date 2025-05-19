part of '../myoro_checkbox.dart';

/// Controller of [MyoroCheckbox].
abstract class MyoroCheckboxController {
  late MyoroCheckboxConfiguration _configuration;

  /// [ValueNotifier] controlling whether the [MyoroCheckbox] is selected.
  late final ValueNotifier<bool> _enabledNotifier;

  /// Dispose function.
  void dispose() {
    _enabledNotifier.dispose();
  }
}
