part of '../myoro_group_checkbox.dart';

/// Controller implementation of [MyoroGroupCheckbox].
final class MyoroGroupCheckboxControllerImpl extends MyoroGroupCheckboxController {
  ValueNotifier<MyoroGroupCheckboxItems> get checkboxesNotifier => _checkboxesNotifier;

  MyoroGroupCheckboxControllerImpl(MyoroGroupCheckboxConfiguration configuration) {
    _configuration = configuration;
    _checkboxesNotifier = ValueNotifier(_configuration.checkboxes);
  }

  /// Method to toggle a checkbox in the group.
  @override
  void toggle(String key, [bool? enabled]) {
    _checkboxesNotifier.value = Map.from(_checkboxesNotifier.value)
      ..update(key, (bool keyChanged) => enabled ?? !keyChanged);
  }

  /// Sets all of the checkboxes to a value.
  @override
  void changeAll([bool enabled = false]) {
    _checkboxesNotifier.value = {
      for (final MapEntry<String, bool> entry in _checkboxesNotifier.value.entries) entry.key: enabled,
    };
  }
}
