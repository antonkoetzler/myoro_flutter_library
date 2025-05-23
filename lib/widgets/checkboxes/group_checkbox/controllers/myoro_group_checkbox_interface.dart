import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Interface of [MyoroGroupCheckbox].
abstract interface class MyoroGroupCheckboxInterface {
  /// Method to toggle a checkbox in the group.
  void toggle(String key, [bool? enabled]);

  /// Sets all of the checkboxes to a value.
  void changeAll([bool enabled = false]);
}
