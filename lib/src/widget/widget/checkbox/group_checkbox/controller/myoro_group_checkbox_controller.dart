import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Controller of [MyoroGroupCheckbox].
class MyoroGroupCheckboxController extends ValueNotifier<MyoroGroupCheckboxItems> {
  MyoroGroupCheckboxController({required MyoroGroupCheckboxItems checkboxes}) : super(checkboxes);

  /// Method to toggle a checkbox in the group.
  void toggle(String key, [bool? enabled]) {
    value = Map.from(checkboxes)..update(key, (bool keyChanged) => enabled ?? !keyChanged);
  }

  /// Sets all of the checkboxes to a value.
  void changeAll([bool enabled = false]) {
    value = {for (final MapEntry<String, bool> entry in checkboxes.entries) entry.key: enabled};
  }

  MyoroGroupCheckboxItems get checkboxes => value;
}
