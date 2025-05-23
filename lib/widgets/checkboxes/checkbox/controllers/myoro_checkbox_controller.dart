import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Controller of [MyoroCheckbox].
class MyoroCheckboxController extends ValueNotifier<bool> {
  MyoroCheckboxConfiguration configuration;

  MyoroCheckboxController(this.configuration) : super(configuration.initialValue);

  /// Toggles the checkbox value.
  void toggle([bool? enabled]) {
    value = enabled ?? !this.enabled;
  }

  /// Alias of [value].
  bool get enabled => value;
}
