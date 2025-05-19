part of '../myoro_group_checkbox.dart';

/// Controller of [MyoroGroupCheckbox].
abstract class MyoroGroupCheckboxController {
  /// Configuration.
  late MyoroGroupCheckboxConfiguration _configuration;

  /// [ValueNotifier] controlling which [MyoroGroupCheckboxItems] are enabled.
  late final ValueNotifier<MyoroGroupCheckboxItems> _checkboxesNotifier;

  /// Dispose function.
  void dispose() {
    _checkboxesNotifier.dispose();
  }

  /// Method to toggle a checkbox in the group.
  void toggle(String key, [bool? enabled]);

  /// Sets all of the checkboxes to a value.
  void changeAll([bool enabled = false]);
}
