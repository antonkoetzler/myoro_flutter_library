import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Controller of [MyoroCheckbox].
class MyoroCheckboxController extends ValueNotifier<bool> implements MyoroCheckboxInterface {
  MyoroCheckboxController({required MyoroCheckboxConfiguration configuration}) : super(configuration.initialValue) {
    state = MyoroCheckboxState(configuration);
  }

  late final MyoroCheckboxState state;

  @override
  void toggle([bool? enabled]) {
    value = enabled ?? !this.enabled;
  }

  bool get enabled => value;
}
