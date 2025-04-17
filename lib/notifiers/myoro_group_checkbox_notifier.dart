import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ValueNotifier] for [MyoroGroupCheckbox].
class MyoroGroupCheckboxNotifier
    extends ValueNotifier<MyoroGroupCheckboxItems> {
  MyoroGroupCheckboxNotifier(super._value);

  /// Method to toggle a checkbox in the group.
  void toggle(String key, [bool? enabled]) {
    value = Map.from(value)
      ..update(key, (bool keyChanged) => enabled ?? !keyChanged);
  }

  /// Sets all of the checkboxes to a value.
  void changeAll([bool enabled = false]) {
    value = {
      for (final MapEntry<String, bool> entry in value.entries)
        entry.key: enabled,
    };
  }

  /// Alias for [ValueNotifier.value].
  MyoroGroupCheckboxItems get checkboxes => value;
}
