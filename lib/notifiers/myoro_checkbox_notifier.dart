import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ValueNotifier] to manage the value of a [MyoroCheckbox].
final class MyoroCheckboxNotifier extends ValueNotifier<bool> {
  MyoroCheckboxNotifier([bool? enabled]) : super(enabled ?? false);

  /// Toggles the [MyoroCheckbox].
  void toggle([bool? enabled]) => value = enabled ?? !value;

  /// Alias for [ValueNotifier.value].
  bool get enabled => value;
}
